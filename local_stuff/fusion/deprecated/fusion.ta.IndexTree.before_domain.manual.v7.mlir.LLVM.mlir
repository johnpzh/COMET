module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %2 = llvm.mlir.constant(1.200000e+00 : f64) : f64
    %3 = llvm.mlir.constant(0 : i64) : i64
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
    %15 = llvm.mlir.constant(-1 : index) : i64
    %16 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(13 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.zero : !llvm.ptr
    %22 = llvm.getelementptr %21[13] : (!llvm.ptr) -> !llvm.ptr, i64
    %23 = llvm.ptrtoint %22 : !llvm.ptr to i64
    %24 = llvm.call @malloc(%23) : (i64) -> !llvm.ptr
    %25 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %26 = llvm.insertvalue %24, %25[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.insertvalue %19, %29[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %20, %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.alloca %32 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %31, %33 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(i64, ptr)> 
    %37 = llvm.insertvalue %33, %36[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%12, %18, %15, %17, %15, %34, %33, %11) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %38 = llvm.load %24 : !llvm.ptr -> i64
    %39 = llvm.getelementptr %24[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %40 = llvm.load %39 : !llvm.ptr -> i64
    %41 = llvm.getelementptr %24[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %42 = llvm.load %41 : !llvm.ptr -> i64
    %43 = llvm.getelementptr %24[3] : (!llvm.ptr) -> !llvm.ptr, i64
    %44 = llvm.load %43 : !llvm.ptr -> i64
    %45 = llvm.getelementptr %24[4] : (!llvm.ptr) -> !llvm.ptr, i64
    %46 = llvm.load %45 : !llvm.ptr -> i64
    %47 = llvm.getelementptr %24[5] : (!llvm.ptr) -> !llvm.ptr, i64
    %48 = llvm.load %47 : !llvm.ptr -> i64
    %49 = llvm.getelementptr %24[6] : (!llvm.ptr) -> !llvm.ptr, i64
    %50 = llvm.load %49 : !llvm.ptr -> i64
    %51 = llvm.getelementptr %24[7] : (!llvm.ptr) -> !llvm.ptr, i64
    %52 = llvm.load %51 : !llvm.ptr -> i64
    %53 = llvm.getelementptr %24[8] : (!llvm.ptr) -> !llvm.ptr, i64
    %54 = llvm.load %53 : !llvm.ptr -> i64
    %55 = llvm.getelementptr %24[9] : (!llvm.ptr) -> !llvm.ptr, i64
    %56 = llvm.load %55 : !llvm.ptr -> i64
    %57 = llvm.getelementptr %24[10] : (!llvm.ptr) -> !llvm.ptr, i64
    %58 = llvm.load %57 : !llvm.ptr -> i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.mlir.zero : !llvm.ptr
    %61 = llvm.getelementptr %60[%38] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %62 = llvm.ptrtoint %61 : !llvm.ptr to i64
    %63 = llvm.call @malloc(%62) : (i64) -> !llvm.ptr
    %64 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %65 = llvm.insertvalue %63, %64[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.insertvalue %38, %68[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.insertvalue %59, %69[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%18 : i64)
  ^bb1(%71: i64):  // 2 preds: ^bb0, ^bb2
    %72 = llvm.icmp "slt" %71, %38 : i64
    llvm.cond_br %72, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %73 = llvm.getelementptr %63[%71] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %73 : i64, !llvm.ptr
    %74 = llvm.add %71, %17  : i64
    llvm.br ^bb1(%74 : i64)
  ^bb3:  // pred: ^bb1
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.alloca %75 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %70, %76 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %79 = llvm.insertvalue %77, %78[0] : !llvm.struct<(i64, ptr)> 
    %80 = llvm.insertvalue %76, %79[1] : !llvm.struct<(i64, ptr)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.zero : !llvm.ptr
    %83 = llvm.getelementptr %82[%40] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %84 = llvm.ptrtoint %83 : !llvm.ptr to i64
    %85 = llvm.call @malloc(%84) : (i64) -> !llvm.ptr
    %86 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %87 = llvm.insertvalue %85, %86[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.insertvalue %85, %87[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.insertvalue %89, %88[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.insertvalue %40, %90[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.insertvalue %81, %91[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%18 : i64)
  ^bb4(%93: i64):  // 2 preds: ^bb3, ^bb5
    %94 = llvm.icmp "slt" %93, %40 : i64
    llvm.cond_br %94, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %95 = llvm.getelementptr %85[%93] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %95 : i64, !llvm.ptr
    %96 = llvm.add %93, %17  : i64
    llvm.br ^bb4(%96 : i64)
  ^bb6:  // pred: ^bb4
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.alloca %97 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %92, %98 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %101 = llvm.insertvalue %99, %100[0] : !llvm.struct<(i64, ptr)> 
    %102 = llvm.insertvalue %98, %101[1] : !llvm.struct<(i64, ptr)> 
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.mlir.zero : !llvm.ptr
    %105 = llvm.getelementptr %104[%42] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %106 = llvm.ptrtoint %105 : !llvm.ptr to i64
    %107 = llvm.call @malloc(%106) : (i64) -> !llvm.ptr
    %108 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %109 = llvm.insertvalue %107, %108[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.insertvalue %107, %109[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.insertvalue %111, %110[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.insertvalue %42, %112[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.insertvalue %103, %113[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%18 : i64)
  ^bb7(%115: i64):  // 2 preds: ^bb6, ^bb8
    %116 = llvm.icmp "slt" %115, %42 : i64
    llvm.cond_br %116, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %117 = llvm.getelementptr %107[%115] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %117 : i64, !llvm.ptr
    %118 = llvm.add %115, %17  : i64
    llvm.br ^bb7(%118 : i64)
  ^bb9:  // pred: ^bb7
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.alloca %119 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %114, %120 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %123 = llvm.insertvalue %121, %122[0] : !llvm.struct<(i64, ptr)> 
    %124 = llvm.insertvalue %120, %123[1] : !llvm.struct<(i64, ptr)> 
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.zero : !llvm.ptr
    %127 = llvm.getelementptr %126[%44] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %128 = llvm.ptrtoint %127 : !llvm.ptr to i64
    %129 = llvm.call @malloc(%128) : (i64) -> !llvm.ptr
    %130 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %131 = llvm.insertvalue %129, %130[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.insertvalue %129, %131[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.insertvalue %133, %132[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.insertvalue %44, %134[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.insertvalue %125, %135[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%18 : i64)
  ^bb10(%137: i64):  // 2 preds: ^bb9, ^bb11
    %138 = llvm.icmp "slt" %137, %44 : i64
    llvm.cond_br %138, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %139 = llvm.getelementptr %129[%137] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %139 : i64, !llvm.ptr
    %140 = llvm.add %137, %17  : i64
    llvm.br ^bb10(%140 : i64)
  ^bb12:  // pred: ^bb10
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.alloca %141 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %136, %142 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %145 = llvm.insertvalue %143, %144[0] : !llvm.struct<(i64, ptr)> 
    %146 = llvm.insertvalue %142, %145[1] : !llvm.struct<(i64, ptr)> 
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.zero : !llvm.ptr
    %149 = llvm.getelementptr %148[%46] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %150 = llvm.ptrtoint %149 : !llvm.ptr to i64
    %151 = llvm.call @malloc(%150) : (i64) -> !llvm.ptr
    %152 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %153 = llvm.insertvalue %151, %152[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.insertvalue %151, %153[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.insertvalue %155, %154[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.insertvalue %46, %156[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.insertvalue %147, %157[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%18 : i64)
  ^bb13(%159: i64):  // 2 preds: ^bb12, ^bb14
    %160 = llvm.icmp "slt" %159, %46 : i64
    llvm.cond_br %160, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %161 = llvm.getelementptr %151[%159] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %161 : i64, !llvm.ptr
    %162 = llvm.add %159, %17  : i64
    llvm.br ^bb13(%162 : i64)
  ^bb15:  // pred: ^bb13
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.alloca %163 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %158, %164 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %167 = llvm.insertvalue %165, %166[0] : !llvm.struct<(i64, ptr)> 
    %168 = llvm.insertvalue %164, %167[1] : !llvm.struct<(i64, ptr)> 
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.zero : !llvm.ptr
    %171 = llvm.getelementptr %170[%48] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %172 = llvm.ptrtoint %171 : !llvm.ptr to i64
    %173 = llvm.call @malloc(%172) : (i64) -> !llvm.ptr
    %174 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %175 = llvm.insertvalue %173, %174[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.insertvalue %173, %175[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.insertvalue %177, %176[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.insertvalue %48, %178[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.insertvalue %169, %179[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%18 : i64)
  ^bb16(%181: i64):  // 2 preds: ^bb15, ^bb17
    %182 = llvm.icmp "slt" %181, %48 : i64
    llvm.cond_br %182, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %183 = llvm.getelementptr %173[%181] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %183 : i64, !llvm.ptr
    %184 = llvm.add %181, %17  : i64
    llvm.br ^bb16(%184 : i64)
  ^bb18:  // pred: ^bb16
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.alloca %185 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %180, %186 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %189 = llvm.insertvalue %187, %188[0] : !llvm.struct<(i64, ptr)> 
    %190 = llvm.insertvalue %186, %189[1] : !llvm.struct<(i64, ptr)> 
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.zero : !llvm.ptr
    %193 = llvm.getelementptr %192[%50] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %194 = llvm.ptrtoint %193 : !llvm.ptr to i64
    %195 = llvm.call @malloc(%194) : (i64) -> !llvm.ptr
    %196 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %197 = llvm.insertvalue %195, %196[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.insertvalue %195, %197[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.insertvalue %199, %198[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.insertvalue %50, %200[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.insertvalue %191, %201[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%18 : i64)
  ^bb19(%203: i64):  // 2 preds: ^bb18, ^bb20
    %204 = llvm.icmp "slt" %203, %50 : i64
    llvm.cond_br %204, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %205 = llvm.getelementptr %195[%203] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %205 : i64, !llvm.ptr
    %206 = llvm.add %203, %17  : i64
    llvm.br ^bb19(%206 : i64)
  ^bb21:  // pred: ^bb19
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.alloca %207 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %202, %208 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %211 = llvm.insertvalue %209, %210[0] : !llvm.struct<(i64, ptr)> 
    %212 = llvm.insertvalue %208, %211[1] : !llvm.struct<(i64, ptr)> 
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.zero : !llvm.ptr
    %215 = llvm.getelementptr %214[%52] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %216 = llvm.ptrtoint %215 : !llvm.ptr to i64
    %217 = llvm.call @malloc(%216) : (i64) -> !llvm.ptr
    %218 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %219 = llvm.insertvalue %217, %218[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.insertvalue %217, %219[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.mlir.constant(0 : index) : i64
    %222 = llvm.insertvalue %221, %220[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %223 = llvm.insertvalue %52, %222[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %224 = llvm.insertvalue %213, %223[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%18 : i64)
  ^bb22(%225: i64):  // 2 preds: ^bb21, ^bb23
    %226 = llvm.icmp "slt" %225, %52 : i64
    llvm.cond_br %226, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %227 = llvm.getelementptr %217[%225] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %227 : i64, !llvm.ptr
    %228 = llvm.add %225, %17  : i64
    llvm.br ^bb22(%228 : i64)
  ^bb24:  // pred: ^bb22
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.alloca %229 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %224, %230 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %233 = llvm.insertvalue %231, %232[0] : !llvm.struct<(i64, ptr)> 
    %234 = llvm.insertvalue %230, %233[1] : !llvm.struct<(i64, ptr)> 
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.zero : !llvm.ptr
    %237 = llvm.getelementptr %236[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %238 = llvm.ptrtoint %237 : !llvm.ptr to i64
    %239 = llvm.call @malloc(%238) : (i64) -> !llvm.ptr
    %240 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %241 = llvm.insertvalue %239, %240[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.insertvalue %239, %241[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.insertvalue %243, %242[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.insertvalue %54, %244[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.insertvalue %235, %245[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%18 : i64)
  ^bb25(%247: i64):  // 2 preds: ^bb24, ^bb26
    %248 = llvm.icmp "slt" %247, %54 : i64
    llvm.cond_br %248, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %249 = llvm.getelementptr %239[%247] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %16, %249 : f64, !llvm.ptr
    %250 = llvm.add %247, %17  : i64
    llvm.br ^bb25(%250 : i64)
  ^bb27:  // pred: ^bb25
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.alloca %251 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %246, %252 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %255 = llvm.insertvalue %253, %254[0] : !llvm.struct<(i64, ptr)> 
    %256 = llvm.insertvalue %252, %255[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%12, %18, %15, %17, %15, %77, %76, %99, %98, %121, %120, %143, %142, %165, %164, %187, %186, %209, %208, %231, %230, %253, %252, %11) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %257 = llvm.mlir.constant(4 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mul %58, %257  : i64
    %260 = llvm.mlir.zero : !llvm.ptr
    %261 = llvm.getelementptr %260[%259] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %262 = llvm.ptrtoint %261 : !llvm.ptr to i64
    %263 = llvm.mlir.constant(32 : index) : i64
    %264 = llvm.add %262, %263  : i64
    %265 = llvm.call @malloc(%264) : (i64) -> !llvm.ptr
    %266 = llvm.ptrtoint %265 : !llvm.ptr to i64
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.sub %263, %267  : i64
    %269 = llvm.add %266, %268  : i64
    %270 = llvm.urem %269, %263  : i64
    %271 = llvm.sub %269, %270  : i64
    %272 = llvm.inttoptr %271 : i64 to !llvm.ptr
    %273 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %274 = llvm.insertvalue %265, %273[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %275 = llvm.insertvalue %272, %274[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %276 = llvm.mlir.constant(0 : index) : i64
    %277 = llvm.insertvalue %276, %275[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %278 = llvm.insertvalue %58, %277[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %279 = llvm.insertvalue %257, %278[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %280 = llvm.insertvalue %257, %279[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %281 = llvm.insertvalue %258, %280[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%18 : i64)
  ^bb28(%282: i64):  // 2 preds: ^bb27, ^bb31
    %283 = llvm.icmp "slt" %282, %58 : i64
    llvm.cond_br %283, ^bb29(%18 : i64), ^bb32
  ^bb29(%284: i64):  // 2 preds: ^bb28, ^bb30
    %285 = llvm.icmp "slt" %284, %10 : i64
    llvm.cond_br %285, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %286 = llvm.mlir.constant(4 : index) : i64
    %287 = llvm.mul %282, %286  : i64
    %288 = llvm.add %287, %284  : i64
    %289 = llvm.getelementptr %272[%288] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %289 : f64, !llvm.ptr
    %290 = llvm.add %284, %17  : i64
    llvm.br ^bb29(%290 : i64)
  ^bb31:  // pred: ^bb29
    %291 = llvm.add %282, %17  : i64
    llvm.br ^bb28(%291 : i64)
  ^bb32:  // pred: ^bb28
    %292 = llvm.mlir.constant(4 : index) : i64
    %293 = llvm.mlir.constant(4 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.mlir.constant(16 : index) : i64
    %296 = llvm.mlir.zero : !llvm.ptr
    %297 = llvm.getelementptr %296[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %298 = llvm.ptrtoint %297 : !llvm.ptr to i64
    %299 = llvm.mlir.constant(32 : index) : i64
    %300 = llvm.add %298, %299  : i64
    %301 = llvm.call @malloc(%300) : (i64) -> !llvm.ptr
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
    %314 = llvm.insertvalue %292, %313[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %315 = llvm.insertvalue %293, %314[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %316 = llvm.insertvalue %293, %315[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %317 = llvm.insertvalue %294, %316[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb33(%18 : i64)
  ^bb33(%318: i64):  // 2 preds: ^bb32, ^bb36
    %319 = llvm.icmp "slt" %318, %10 : i64
    llvm.cond_br %319, ^bb34(%18 : i64), ^bb37
  ^bb34(%320: i64):  // 2 preds: ^bb33, ^bb35
    %321 = llvm.icmp "slt" %320, %10 : i64
    llvm.cond_br %321, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %322 = llvm.mlir.constant(4 : index) : i64
    %323 = llvm.mul %318, %322  : i64
    %324 = llvm.add %323, %320  : i64
    %325 = llvm.getelementptr %308[%324] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %325 : f64, !llvm.ptr
    %326 = llvm.add %320, %17  : i64
    llvm.br ^bb34(%326 : i64)
  ^bb36:  // pred: ^bb34
    %327 = llvm.add %318, %17  : i64
    llvm.br ^bb33(%327 : i64)
  ^bb37:  // pred: ^bb33
    %328 = llvm.mlir.constant(4 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mul %56, %328  : i64
    %331 = llvm.mlir.zero : !llvm.ptr
    %332 = llvm.getelementptr %331[%330] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %333 = llvm.ptrtoint %332 : !llvm.ptr to i64
    %334 = llvm.mlir.constant(32 : index) : i64
    %335 = llvm.add %333, %334  : i64
    %336 = llvm.call @malloc(%335) : (i64) -> !llvm.ptr
    %337 = llvm.ptrtoint %336 : !llvm.ptr to i64
    %338 = llvm.mlir.constant(1 : index) : i64
    %339 = llvm.sub %334, %338  : i64
    %340 = llvm.add %337, %339  : i64
    %341 = llvm.urem %340, %334  : i64
    %342 = llvm.sub %340, %341  : i64
    %343 = llvm.inttoptr %342 : i64 to !llvm.ptr
    %344 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %345 = llvm.insertvalue %336, %344[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %346 = llvm.insertvalue %343, %345[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.insertvalue %347, %346[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %349 = llvm.insertvalue %56, %348[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %350 = llvm.insertvalue %328, %349[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %351 = llvm.insertvalue %328, %350[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %352 = llvm.insertvalue %329, %351[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb38(%18 : i64)
  ^bb38(%353: i64):  // 2 preds: ^bb37, ^bb41
    %354 = llvm.icmp "slt" %353, %56 : i64
    llvm.cond_br %354, ^bb39(%18 : i64), ^bb42(%18 : i64)
  ^bb39(%355: i64):  // 2 preds: ^bb38, ^bb40
    %356 = llvm.icmp "slt" %355, %10 : i64
    llvm.cond_br %356, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %357 = llvm.mlir.constant(4 : index) : i64
    %358 = llvm.mul %353, %357  : i64
    %359 = llvm.add %358, %355  : i64
    %360 = llvm.getelementptr %343[%359] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %16, %360 : f64, !llvm.ptr
    %361 = llvm.add %355, %17  : i64
    llvm.br ^bb39(%361 : i64)
  ^bb41:  // pred: ^bb39
    %362 = llvm.add %353, %17  : i64
    llvm.br ^bb38(%362 : i64)
  ^bb42(%363: i64):  // 2 preds: ^bb38, ^bb45
    %364 = llvm.icmp "slt" %363, %56 : i64
    llvm.cond_br %364, ^bb43(%18 : i64), ^bb46(%18, %16 : i64, f64)
  ^bb43(%365: i64):  // 2 preds: ^bb42, ^bb44
    %366 = llvm.icmp "slt" %365, %10 : i64
    llvm.cond_br %366, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %367 = llvm.add %365, %17  : i64
    llvm.br ^bb43(%367 : i64)
  ^bb45:  // pred: ^bb43
    %368 = llvm.add %363, %17  : i64
    llvm.br ^bb42(%368 : i64)
  ^bb46(%369: i64, %370: f64):  // 2 preds: ^bb42, ^bb54
    %371 = llvm.icmp "slt" %369, %0 : i64
    llvm.cond_br %371, ^bb47(%18, %370 : i64, f64), ^bb55
  ^bb47(%372: i64, %373: f64):  // 2 preds: ^bb46, ^bb53
    %374 = llvm.icmp "slt" %372, %56 : i64
    llvm.cond_br %374, ^bb48, ^bb54
  ^bb48:  // pred: ^bb47
    %375 = llvm.add %372, %17  : i64
    %376 = llvm.getelementptr %151[%372] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %377 = llvm.load %376 : !llvm.ptr -> i64
    %378 = llvm.getelementptr %151[%375] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %379 = llvm.load %378 : !llvm.ptr -> i64
    llvm.br ^bb49(%377, %373 : i64, f64)
  ^bb49(%380: i64, %381: f64):  // 2 preds: ^bb48, ^bb50
    %382 = llvm.icmp "slt" %380, %379 : i64
    llvm.cond_br %382, ^bb50, ^bb51(%18 : i64)
  ^bb50:  // pred: ^bb49
    %383 = llvm.getelementptr %173[%380] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %384 = llvm.load %383 : !llvm.ptr -> i64
    %385 = llvm.getelementptr %239[%380] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %386 = llvm.load %385 : !llvm.ptr -> f64
    %387 = llvm.mlir.constant(4 : index) : i64
    %388 = llvm.mul %384, %387  : i64
    %389 = llvm.add %388, %369  : i64
    %390 = llvm.getelementptr %272[%389] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %391 = llvm.load %390 : !llvm.ptr -> f64
    %392 = llvm.fmul %386, %391  : f64
    %393 = llvm.fadd %381, %392  : f64
    %394 = llvm.add %380, %17  : i64
    llvm.br ^bb49(%394, %393 : i64, f64)
  ^bb51(%395: i64):  // 2 preds: ^bb49, ^bb52
    %396 = llvm.icmp "slt" %395, %0 : i64
    llvm.cond_br %396, ^bb52, ^bb53
  ^bb52:  // pred: ^bb51
    %397 = llvm.mlir.constant(4 : index) : i64
    %398 = llvm.mul %369, %397  : i64
    %399 = llvm.add %398, %395  : i64
    %400 = llvm.getelementptr %308[%399] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %401 = llvm.load %400 : !llvm.ptr -> f64
    %402 = llvm.fmul %381, %401  : f64
    %403 = llvm.mlir.constant(4 : index) : i64
    %404 = llvm.mul %372, %403  : i64
    %405 = llvm.add %404, %395  : i64
    %406 = llvm.getelementptr %343[%405] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %407 = llvm.load %406 : !llvm.ptr -> f64
    %408 = llvm.fadd %407, %402  : f64
    %409 = llvm.mlir.constant(4 : index) : i64
    %410 = llvm.mul %372, %409  : i64
    %411 = llvm.add %410, %395  : i64
    %412 = llvm.getelementptr %343[%411] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %408, %412 : f64, !llvm.ptr
    %413 = llvm.add %395, %17  : i64
    llvm.br ^bb51(%413 : i64)
  ^bb53:  // pred: ^bb51
    llvm.br ^bb47(%375, %381 : i64, f64)
  ^bb54:  // pred: ^bb47
    %414 = llvm.add %369, %17  : i64
    llvm.br ^bb46(%414, %373 : i64, f64)
  ^bb55:  // pred: ^bb46
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.alloca %415 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %352, %416 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %417 = llvm.mlir.constant(2 : index) : i64
    %418 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %419 = llvm.insertvalue %417, %418[0] : !llvm.struct<(i64, ptr)> 
    %420 = llvm.insertvalue %416, %419[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%417, %416) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
