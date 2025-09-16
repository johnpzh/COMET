module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1.200000e+00 : f64) : f64
    %1 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.mlir.constant(15 : index) : i64
    %4 = llvm.mlir.constant(14 : index) : i64
    %5 = llvm.mlir.constant(13 : index) : i64
    %6 = llvm.mlir.constant(12 : index) : i64
    %7 = llvm.mlir.constant(11 : index) : i64
    %8 = llvm.mlir.constant(10 : index) : i64
    %9 = llvm.mlir.constant(9 : index) : i64
    %10 = llvm.mlir.constant(8 : index) : i64
    %11 = llvm.mlir.constant(7 : index) : i64
    %12 = llvm.mlir.constant(6 : index) : i64
    %13 = llvm.mlir.constant(5 : index) : i64
    %14 = llvm.mlir.constant(4 : index) : i64
    %15 = llvm.mlir.constant(1 : i32) : i32
    %16 = llvm.mlir.constant(0 : i32) : i32
    %17 = llvm.mlir.constant(3 : index) : i64
    %18 = llvm.mlir.constant(-1 : index) : i64
    %19 = llvm.mlir.constant(4 : i64) : i64
    %20 = llvm.mlir.constant(2 : index) : i64
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.mlir.constant(19 : index) : i64
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.mlir.zero : !llvm.ptr
    %26 = llvm.getelementptr %25[%23] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %27 = llvm.ptrtoint %26 : !llvm.ptr to i64
    %28 = llvm.call @malloc(%27) : (i64) -> !llvm.ptr
    %29 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.insertvalue %23, %33[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %24, %34[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.alloca %36 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %35, %37 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %40 = llvm.insertvalue %38, %39[0] : !llvm.struct<(i64, ptr)> 
    %41 = llvm.insertvalue %37, %40[1] : !llvm.struct<(i64, ptr)> 
    %42 = llvm.extractvalue %41[0] : !llvm.struct<(i64, ptr)> 
    %43 = llvm.extractvalue %41[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_3D_f64(%16, %21, %18, %21, %18, %21, %18, %42, %43, %15) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %44 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.getelementptr %44[%22] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %46 = llvm.load %45 : !llvm.ptr -> i64
    %47 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.getelementptr %47[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %49 = llvm.load %48 : !llvm.ptr -> i64
    %50 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.getelementptr %50[%20] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %52 = llvm.load %51 : !llvm.ptr -> i64
    %53 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.getelementptr %53[%17] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %55 = llvm.load %54 : !llvm.ptr -> i64
    %56 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.getelementptr %56[%14] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %58 = llvm.load %57 : !llvm.ptr -> i64
    %59 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.getelementptr %59[%13] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %61 = llvm.load %60 : !llvm.ptr -> i64
    %62 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.getelementptr %62[%12] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %64 = llvm.load %63 : !llvm.ptr -> i64
    %65 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.getelementptr %65[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %67 = llvm.load %66 : !llvm.ptr -> i64
    %68 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.getelementptr %68[%10] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %70 = llvm.load %69 : !llvm.ptr -> i64
    %71 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.getelementptr %71[%9] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %73 = llvm.load %72 : !llvm.ptr -> i64
    %74 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.getelementptr %74[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %76 = llvm.load %75 : !llvm.ptr -> i64
    %77 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.getelementptr %77[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %79 = llvm.load %78 : !llvm.ptr -> i64
    %80 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.getelementptr %80[%6] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %82 = llvm.load %81 : !llvm.ptr -> i64
    %83 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.getelementptr %83[%5] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %85 = llvm.load %84 : !llvm.ptr -> i64
    %86 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.getelementptr %86[%4] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %88 = llvm.load %87 : !llvm.ptr -> i64
    %89 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.getelementptr %89[%3] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %91 = llvm.load %90 : !llvm.ptr -> i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.zero : !llvm.ptr
    %94 = llvm.getelementptr %93[%46] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %95 = llvm.ptrtoint %94 : !llvm.ptr to i64
    %96 = llvm.call @malloc(%95) : (i64) -> !llvm.ptr
    %97 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %98 = llvm.insertvalue %96, %97[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.insertvalue %96, %98[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.insertvalue %100, %99[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.insertvalue %46, %101[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.insertvalue %92, %102[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%22 : i64)
  ^bb1(%104: i64):  // 2 preds: ^bb0, ^bb2
    %105 = llvm.icmp "slt" %104, %46 : i64
    llvm.cond_br %105, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %106 = llvm.extractvalue %103[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.getelementptr %106[%104] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %107 : i64, !llvm.ptr
    %108 = llvm.add %104, %21 : i64
    llvm.br ^bb1(%108 : i64)
  ^bb3:  // pred: ^bb1
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.alloca %109 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %103, %110 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %113 = llvm.insertvalue %111, %112[0] : !llvm.struct<(i64, ptr)> 
    %114 = llvm.insertvalue %110, %113[1] : !llvm.struct<(i64, ptr)> 
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.zero : !llvm.ptr
    %117 = llvm.getelementptr %116[%49] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %118 = llvm.ptrtoint %117 : !llvm.ptr to i64
    %119 = llvm.call @malloc(%118) : (i64) -> !llvm.ptr
    %120 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %121 = llvm.insertvalue %119, %120[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %122 = llvm.insertvalue %119, %121[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.insertvalue %123, %122[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %125 = llvm.insertvalue %49, %124[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %126 = llvm.insertvalue %115, %125[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%22 : i64)
  ^bb4(%127: i64):  // 2 preds: ^bb3, ^bb5
    %128 = llvm.icmp "slt" %127, %49 : i64
    llvm.cond_br %128, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %129 = llvm.extractvalue %126[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.getelementptr %129[%127] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %130 : i64, !llvm.ptr
    %131 = llvm.add %127, %21 : i64
    llvm.br ^bb4(%131 : i64)
  ^bb6:  // pred: ^bb4
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.alloca %132 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %126, %133 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %136 = llvm.insertvalue %134, %135[0] : !llvm.struct<(i64, ptr)> 
    %137 = llvm.insertvalue %133, %136[1] : !llvm.struct<(i64, ptr)> 
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.zero : !llvm.ptr
    %140 = llvm.getelementptr %139[%52] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %141 = llvm.ptrtoint %140 : !llvm.ptr to i64
    %142 = llvm.call @malloc(%141) : (i64) -> !llvm.ptr
    %143 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %144 = llvm.insertvalue %142, %143[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.insertvalue %142, %144[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.insertvalue %146, %145[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.insertvalue %52, %147[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.insertvalue %138, %148[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%22 : i64)
  ^bb7(%150: i64):  // 2 preds: ^bb6, ^bb8
    %151 = llvm.icmp "slt" %150, %52 : i64
    llvm.cond_br %151, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %152 = llvm.extractvalue %149[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.getelementptr %152[%150] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %153 : i64, !llvm.ptr
    %154 = llvm.add %150, %21 : i64
    llvm.br ^bb7(%154 : i64)
  ^bb9:  // pred: ^bb7
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.alloca %155 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %149, %156 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %159 = llvm.insertvalue %157, %158[0] : !llvm.struct<(i64, ptr)> 
    %160 = llvm.insertvalue %156, %159[1] : !llvm.struct<(i64, ptr)> 
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.zero : !llvm.ptr
    %163 = llvm.getelementptr %162[%55] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %164 = llvm.ptrtoint %163 : !llvm.ptr to i64
    %165 = llvm.call @malloc(%164) : (i64) -> !llvm.ptr
    %166 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %167 = llvm.insertvalue %165, %166[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %168 = llvm.insertvalue %165, %167[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.insertvalue %169, %168[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %171 = llvm.insertvalue %55, %170[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %172 = llvm.insertvalue %161, %171[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%22 : i64)
  ^bb10(%173: i64):  // 2 preds: ^bb9, ^bb11
    %174 = llvm.icmp "slt" %173, %55 : i64
    llvm.cond_br %174, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %175 = llvm.extractvalue %172[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.getelementptr %175[%173] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %176 : i64, !llvm.ptr
    %177 = llvm.add %173, %21 : i64
    llvm.br ^bb10(%177 : i64)
  ^bb12:  // pred: ^bb10
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.alloca %178 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %172, %179 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %182 = llvm.insertvalue %180, %181[0] : !llvm.struct<(i64, ptr)> 
    %183 = llvm.insertvalue %179, %182[1] : !llvm.struct<(i64, ptr)> 
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.zero : !llvm.ptr
    %186 = llvm.getelementptr %185[%58] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %187 = llvm.ptrtoint %186 : !llvm.ptr to i64
    %188 = llvm.call @malloc(%187) : (i64) -> !llvm.ptr
    %189 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %190 = llvm.insertvalue %188, %189[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.insertvalue %188, %190[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.insertvalue %192, %191[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %194 = llvm.insertvalue %58, %193[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.insertvalue %184, %194[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%22 : i64)
  ^bb13(%196: i64):  // 2 preds: ^bb12, ^bb14
    %197 = llvm.icmp "slt" %196, %58 : i64
    llvm.cond_br %197, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %198 = llvm.extractvalue %195[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.getelementptr %198[%196] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %199 : i64, !llvm.ptr
    %200 = llvm.add %196, %21 : i64
    llvm.br ^bb13(%200 : i64)
  ^bb15:  // pred: ^bb13
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.alloca %201 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %195, %202 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %205 = llvm.insertvalue %203, %204[0] : !llvm.struct<(i64, ptr)> 
    %206 = llvm.insertvalue %202, %205[1] : !llvm.struct<(i64, ptr)> 
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.mlir.zero : !llvm.ptr
    %209 = llvm.getelementptr %208[%61] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %210 = llvm.ptrtoint %209 : !llvm.ptr to i64
    %211 = llvm.call @malloc(%210) : (i64) -> !llvm.ptr
    %212 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %213 = llvm.insertvalue %211, %212[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.insertvalue %211, %213[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.insertvalue %215, %214[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.insertvalue %61, %216[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.insertvalue %207, %217[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%22 : i64)
  ^bb16(%219: i64):  // 2 preds: ^bb15, ^bb17
    %220 = llvm.icmp "slt" %219, %61 : i64
    llvm.cond_br %220, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %221 = llvm.extractvalue %218[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %222 = llvm.getelementptr %221[%219] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %222 : i64, !llvm.ptr
    %223 = llvm.add %219, %21 : i64
    llvm.br ^bb16(%223 : i64)
  ^bb18:  // pred: ^bb16
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.alloca %224 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %218, %225 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %228 = llvm.insertvalue %226, %227[0] : !llvm.struct<(i64, ptr)> 
    %229 = llvm.insertvalue %225, %228[1] : !llvm.struct<(i64, ptr)> 
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.zero : !llvm.ptr
    %232 = llvm.getelementptr %231[%64] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %233 = llvm.ptrtoint %232 : !llvm.ptr to i64
    %234 = llvm.call @malloc(%233) : (i64) -> !llvm.ptr
    %235 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %236 = llvm.insertvalue %234, %235[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %237 = llvm.insertvalue %234, %236[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.insertvalue %238, %237[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.insertvalue %64, %239[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.insertvalue %230, %240[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%22 : i64)
  ^bb19(%242: i64):  // 2 preds: ^bb18, ^bb20
    %243 = llvm.icmp "slt" %242, %64 : i64
    llvm.cond_br %243, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %244 = llvm.extractvalue %241[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.getelementptr %244[%242] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %245 : i64, !llvm.ptr
    %246 = llvm.add %242, %21 : i64
    llvm.br ^bb19(%246 : i64)
  ^bb21:  // pred: ^bb19
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.alloca %247 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %241, %248 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %251 = llvm.insertvalue %249, %250[0] : !llvm.struct<(i64, ptr)> 
    %252 = llvm.insertvalue %248, %251[1] : !llvm.struct<(i64, ptr)> 
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.zero : !llvm.ptr
    %255 = llvm.getelementptr %254[%67] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %256 = llvm.ptrtoint %255 : !llvm.ptr to i64
    %257 = llvm.call @malloc(%256) : (i64) -> !llvm.ptr
    %258 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %259 = llvm.insertvalue %257, %258[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.insertvalue %257, %259[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.insertvalue %261, %260[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.insertvalue %67, %262[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.insertvalue %253, %263[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%22 : i64)
  ^bb22(%265: i64):  // 2 preds: ^bb21, ^bb23
    %266 = llvm.icmp "slt" %265, %67 : i64
    llvm.cond_br %266, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %267 = llvm.extractvalue %264[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.getelementptr %267[%265] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %268 : i64, !llvm.ptr
    %269 = llvm.add %265, %21 : i64
    llvm.br ^bb22(%269 : i64)
  ^bb24:  // pred: ^bb22
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.alloca %270 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %264, %271 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %274 = llvm.insertvalue %272, %273[0] : !llvm.struct<(i64, ptr)> 
    %275 = llvm.insertvalue %271, %274[1] : !llvm.struct<(i64, ptr)> 
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.zero : !llvm.ptr
    %278 = llvm.getelementptr %277[%70] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %279 = llvm.ptrtoint %278 : !llvm.ptr to i64
    %280 = llvm.call @malloc(%279) : (i64) -> !llvm.ptr
    %281 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %282 = llvm.insertvalue %280, %281[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.insertvalue %280, %282[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %284 = llvm.mlir.constant(0 : index) : i64
    %285 = llvm.insertvalue %284, %283[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.insertvalue %70, %285[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.insertvalue %276, %286[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%22 : i64)
  ^bb25(%288: i64):  // 2 preds: ^bb24, ^bb26
    %289 = llvm.icmp "slt" %288, %70 : i64
    llvm.cond_br %289, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %290 = llvm.extractvalue %287[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.getelementptr %290[%288] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %291 : i64, !llvm.ptr
    %292 = llvm.add %288, %21 : i64
    llvm.br ^bb25(%292 : i64)
  ^bb27:  // pred: ^bb25
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.alloca %293 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %287, %294 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %297 = llvm.insertvalue %295, %296[0] : !llvm.struct<(i64, ptr)> 
    %298 = llvm.insertvalue %294, %297[1] : !llvm.struct<(i64, ptr)> 
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.zero : !llvm.ptr
    %301 = llvm.getelementptr %300[%73] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %302 = llvm.ptrtoint %301 : !llvm.ptr to i64
    %303 = llvm.call @malloc(%302) : (i64) -> !llvm.ptr
    %304 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %305 = llvm.insertvalue %303, %304[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.insertvalue %303, %305[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.insertvalue %307, %306[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %309 = llvm.insertvalue %73, %308[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %310 = llvm.insertvalue %299, %309[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb28(%22 : i64)
  ^bb28(%311: i64):  // 2 preds: ^bb27, ^bb29
    %312 = llvm.icmp "slt" %311, %73 : i64
    llvm.cond_br %312, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %313 = llvm.extractvalue %310[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %314 = llvm.getelementptr %313[%311] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %314 : i64, !llvm.ptr
    %315 = llvm.add %311, %21 : i64
    llvm.br ^bb28(%315 : i64)
  ^bb30:  // pred: ^bb28
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.alloca %316 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %310, %317 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %320 = llvm.insertvalue %318, %319[0] : !llvm.struct<(i64, ptr)> 
    %321 = llvm.insertvalue %317, %320[1] : !llvm.struct<(i64, ptr)> 
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.mlir.zero : !llvm.ptr
    %324 = llvm.getelementptr %323[%76] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %325 = llvm.ptrtoint %324 : !llvm.ptr to i64
    %326 = llvm.call @malloc(%325) : (i64) -> !llvm.ptr
    %327 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %328 = llvm.insertvalue %326, %327[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %329 = llvm.insertvalue %326, %328[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.insertvalue %330, %329[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %332 = llvm.insertvalue %76, %331[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %333 = llvm.insertvalue %322, %332[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb31(%22 : i64)
  ^bb31(%334: i64):  // 2 preds: ^bb30, ^bb32
    %335 = llvm.icmp "slt" %334, %76 : i64
    llvm.cond_br %335, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %336 = llvm.extractvalue %333[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.getelementptr %336[%334] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %337 : i64, !llvm.ptr
    %338 = llvm.add %334, %21 : i64
    llvm.br ^bb31(%338 : i64)
  ^bb33:  // pred: ^bb31
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.alloca %339 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %333, %340 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %343 = llvm.insertvalue %341, %342[0] : !llvm.struct<(i64, ptr)> 
    %344 = llvm.insertvalue %340, %343[1] : !llvm.struct<(i64, ptr)> 
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.mlir.zero : !llvm.ptr
    %347 = llvm.getelementptr %346[%79] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %348 = llvm.ptrtoint %347 : !llvm.ptr to i64
    %349 = llvm.call @malloc(%348) : (i64) -> !llvm.ptr
    %350 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %351 = llvm.insertvalue %349, %350[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %352 = llvm.insertvalue %349, %351[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.insertvalue %353, %352[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %355 = llvm.insertvalue %79, %354[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %356 = llvm.insertvalue %345, %355[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb34(%22 : i64)
  ^bb34(%357: i64):  // 2 preds: ^bb33, ^bb35
    %358 = llvm.icmp "slt" %357, %79 : i64
    llvm.cond_br %358, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %359 = llvm.extractvalue %356[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %360 = llvm.getelementptr %359[%357] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %360 : i64, !llvm.ptr
    %361 = llvm.add %357, %21 : i64
    llvm.br ^bb34(%361 : i64)
  ^bb36:  // pred: ^bb34
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.alloca %362 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %356, %363 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %366 = llvm.insertvalue %364, %365[0] : !llvm.struct<(i64, ptr)> 
    %367 = llvm.insertvalue %363, %366[1] : !llvm.struct<(i64, ptr)> 
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.mlir.zero : !llvm.ptr
    %370 = llvm.getelementptr %369[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %371 = llvm.ptrtoint %370 : !llvm.ptr to i64
    %372 = llvm.call @malloc(%371) : (i64) -> !llvm.ptr
    %373 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %374 = llvm.insertvalue %372, %373[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %375 = llvm.insertvalue %372, %374[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %376 = llvm.mlir.constant(0 : index) : i64
    %377 = llvm.insertvalue %376, %375[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.insertvalue %82, %377[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.insertvalue %368, %378[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb37(%22 : i64)
  ^bb37(%380: i64):  // 2 preds: ^bb36, ^bb38
    %381 = llvm.icmp "slt" %380, %82 : i64
    llvm.cond_br %381, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %382 = llvm.extractvalue %379[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %383 = llvm.getelementptr %382[%380] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %383 : f64, !llvm.ptr
    %384 = llvm.add %380, %21 : i64
    llvm.br ^bb37(%384 : i64)
  ^bb39:  // pred: ^bb37
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.alloca %385 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %379, %386 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %389 = llvm.insertvalue %387, %388[0] : !llvm.struct<(i64, ptr)> 
    %390 = llvm.insertvalue %386, %389[1] : !llvm.struct<(i64, ptr)> 
    %391 = llvm.extractvalue %114[0] : !llvm.struct<(i64, ptr)> 
    %392 = llvm.extractvalue %114[1] : !llvm.struct<(i64, ptr)> 
    %393 = llvm.extractvalue %137[0] : !llvm.struct<(i64, ptr)> 
    %394 = llvm.extractvalue %137[1] : !llvm.struct<(i64, ptr)> 
    %395 = llvm.extractvalue %160[0] : !llvm.struct<(i64, ptr)> 
    %396 = llvm.extractvalue %160[1] : !llvm.struct<(i64, ptr)> 
    %397 = llvm.extractvalue %183[0] : !llvm.struct<(i64, ptr)> 
    %398 = llvm.extractvalue %183[1] : !llvm.struct<(i64, ptr)> 
    %399 = llvm.extractvalue %206[0] : !llvm.struct<(i64, ptr)> 
    %400 = llvm.extractvalue %206[1] : !llvm.struct<(i64, ptr)> 
    %401 = llvm.extractvalue %229[0] : !llvm.struct<(i64, ptr)> 
    %402 = llvm.extractvalue %229[1] : !llvm.struct<(i64, ptr)> 
    %403 = llvm.extractvalue %252[0] : !llvm.struct<(i64, ptr)> 
    %404 = llvm.extractvalue %252[1] : !llvm.struct<(i64, ptr)> 
    %405 = llvm.extractvalue %275[0] : !llvm.struct<(i64, ptr)> 
    %406 = llvm.extractvalue %275[1] : !llvm.struct<(i64, ptr)> 
    %407 = llvm.extractvalue %298[0] : !llvm.struct<(i64, ptr)> 
    %408 = llvm.extractvalue %298[1] : !llvm.struct<(i64, ptr)> 
    %409 = llvm.extractvalue %321[0] : !llvm.struct<(i64, ptr)> 
    %410 = llvm.extractvalue %321[1] : !llvm.struct<(i64, ptr)> 
    %411 = llvm.extractvalue %344[0] : !llvm.struct<(i64, ptr)> 
    %412 = llvm.extractvalue %344[1] : !llvm.struct<(i64, ptr)> 
    %413 = llvm.extractvalue %367[0] : !llvm.struct<(i64, ptr)> 
    %414 = llvm.extractvalue %367[1] : !llvm.struct<(i64, ptr)> 
    %415 = llvm.extractvalue %390[0] : !llvm.struct<(i64, ptr)> 
    %416 = llvm.extractvalue %390[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_3D_f64_i64(%16, %21, %18, %21, %18, %21, %18, %391, %392, %393, %394, %395, %396, %397, %398, %399, %400, %401, %402, %403, %404, %405, %406, %407, %408, %409, %410, %411, %412, %413, %414, %415, %416, %15) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %417 = llvm.mlir.constant(4 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mul %417, %91 : i64
    %420 = llvm.mlir.zero : !llvm.ptr
    %421 = llvm.getelementptr %420[%419] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %422 = llvm.ptrtoint %421 : !llvm.ptr to i64
    %423 = llvm.mlir.constant(32 : index) : i64
    %424 = llvm.add %422, %423 : i64
    %425 = llvm.call @malloc(%424) : (i64) -> !llvm.ptr
    %426 = llvm.ptrtoint %425 : !llvm.ptr to i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.sub %423, %427 : i64
    %429 = llvm.add %426, %428 : i64
    %430 = llvm.urem %429, %423  : i64
    %431 = llvm.sub %429, %430 : i64
    %432 = llvm.inttoptr %431 : i64 to !llvm.ptr
    %433 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %434 = llvm.insertvalue %425, %433[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %435 = llvm.insertvalue %432, %434[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.insertvalue %436, %435[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %438 = llvm.insertvalue %91, %437[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %439 = llvm.insertvalue %417, %438[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %440 = llvm.insertvalue %417, %439[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %441 = llvm.insertvalue %418, %440[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb40(%22 : i64)
  ^bb40(%442: i64):  // 2 preds: ^bb39, ^bb44
    %443 = llvm.icmp "slt" %442, %91 : i64
    llvm.cond_br %443, ^bb41, ^bb45
  ^bb41:  // pred: ^bb40
    llvm.br ^bb42(%22 : i64)
  ^bb42(%444: i64):  // 2 preds: ^bb41, ^bb43
    %445 = llvm.icmp "slt" %444, %14 : i64
    llvm.cond_br %445, ^bb43, ^bb44
  ^bb43:  // pred: ^bb42
    %446 = llvm.extractvalue %441[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %447 = llvm.mlir.constant(4 : index) : i64
    %448 = llvm.mul %442, %447 : i64
    %449 = llvm.add %448, %444 : i64
    %450 = llvm.getelementptr %446[%449] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %0, %450 : f64, !llvm.ptr
    %451 = llvm.add %444, %21 : i64
    llvm.br ^bb42(%451 : i64)
  ^bb44:  // pred: ^bb42
    %452 = llvm.add %442, %21 : i64
    llvm.br ^bb40(%452 : i64)
  ^bb45:  // pred: ^bb40
    %453 = llvm.mlir.constant(4 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.mul %453, %88 : i64
    %456 = llvm.mul %455, %85 : i64
    %457 = llvm.mlir.zero : !llvm.ptr
    %458 = llvm.getelementptr %457[%456] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %459 = llvm.ptrtoint %458 : !llvm.ptr to i64
    %460 = llvm.mlir.constant(32 : index) : i64
    %461 = llvm.add %459, %460 : i64
    %462 = llvm.call @malloc(%461) : (i64) -> !llvm.ptr
    %463 = llvm.ptrtoint %462 : !llvm.ptr to i64
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.sub %460, %464 : i64
    %466 = llvm.add %463, %465 : i64
    %467 = llvm.urem %466, %460  : i64
    %468 = llvm.sub %466, %467 : i64
    %469 = llvm.inttoptr %468 : i64 to !llvm.ptr
    %470 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %471 = llvm.insertvalue %462, %470[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %472 = llvm.insertvalue %469, %471[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %473 = llvm.mlir.constant(0 : index) : i64
    %474 = llvm.insertvalue %473, %472[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %475 = llvm.insertvalue %85, %474[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %476 = llvm.insertvalue %88, %475[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %477 = llvm.insertvalue %453, %476[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %478 = llvm.insertvalue %455, %477[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %479 = llvm.insertvalue %453, %478[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %480 = llvm.insertvalue %454, %479[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.br ^bb46(%22 : i64)
  ^bb46(%481: i64):  // 2 preds: ^bb45, ^bb53
    %482 = llvm.icmp "slt" %481, %85 : i64
    llvm.cond_br %482, ^bb47, ^bb54
  ^bb47:  // pred: ^bb46
    llvm.br ^bb48(%22 : i64)
  ^bb48(%483: i64):  // 2 preds: ^bb47, ^bb52
    %484 = llvm.icmp "slt" %483, %88 : i64
    llvm.cond_br %484, ^bb49, ^bb53
  ^bb49:  // pred: ^bb48
    llvm.br ^bb50(%22 : i64)
  ^bb50(%485: i64):  // 2 preds: ^bb49, ^bb51
    %486 = llvm.icmp "slt" %485, %14 : i64
    llvm.cond_br %486, ^bb51, ^bb52
  ^bb51:  // pred: ^bb50
    %487 = llvm.extractvalue %480[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %488 = llvm.extractvalue %480[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %489 = llvm.mul %481, %488 : i64
    %490 = llvm.mlir.constant(4 : index) : i64
    %491 = llvm.mul %483, %490 : i64
    %492 = llvm.add %489, %491 : i64
    %493 = llvm.add %492, %485 : i64
    %494 = llvm.getelementptr %487[%493] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %494 : f64, !llvm.ptr
    %495 = llvm.add %485, %21 : i64
    llvm.br ^bb50(%495 : i64)
  ^bb52:  // pred: ^bb50
    %496 = llvm.add %483, %21 : i64
    llvm.br ^bb48(%496 : i64)
  ^bb53:  // pred: ^bb48
    %497 = llvm.add %481, %21 : i64
    llvm.br ^bb46(%497 : i64)
  ^bb54:  // pred: ^bb46
    %498 = llvm.extractvalue %103[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %499 = llvm.getelementptr %498[%22] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %500 = llvm.load %499 : !llvm.ptr -> i64
    %501 = llvm.extractvalue %103[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %502 = llvm.getelementptr %501[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %503 = llvm.load %502 : !llvm.ptr -> i64
    llvm.br ^bb55(%500 : i64)
  ^bb55(%504: i64):  // 2 preds: ^bb54, ^bb65
    %505 = llvm.icmp "slt" %504, %503 : i64
    llvm.cond_br %505, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %506 = llvm.add %504, %21 : i64
    %507 = llvm.extractvalue %195[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %508 = llvm.getelementptr %507[%504] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %509 = llvm.load %508 : !llvm.ptr -> i64
    %510 = llvm.extractvalue %195[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %511 = llvm.getelementptr %510[%506] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %512 = llvm.load %511 : !llvm.ptr -> i64
    %513 = llvm.extractvalue %126[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %514 = llvm.getelementptr %513[%504] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %515 = llvm.load %514 : !llvm.ptr -> i64
    llvm.br ^bb57(%509 : i64)
  ^bb57(%516: i64):  // 2 preds: ^bb56, ^bb64
    %517 = llvm.icmp "slt" %516, %512 : i64
    llvm.cond_br %517, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %518 = llvm.add %516, %21 : i64
    %519 = llvm.extractvalue %287[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %520 = llvm.getelementptr %519[%516] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %521 = llvm.load %520 : !llvm.ptr -> i64
    %522 = llvm.extractvalue %287[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %523 = llvm.getelementptr %522[%518] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %524 = llvm.load %523 : !llvm.ptr -> i64
    %525 = llvm.extractvalue %218[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %526 = llvm.getelementptr %525[%516] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %527 = llvm.load %526 : !llvm.ptr -> i64
    llvm.br ^bb59(%521 : i64)
  ^bb59(%528: i64):  // 2 preds: ^bb58, ^bb63
    %529 = llvm.icmp "slt" %528, %524 : i64
    llvm.cond_br %529, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %530 = llvm.extractvalue %310[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %531 = llvm.getelementptr %530[%528] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %532 = llvm.load %531 : !llvm.ptr -> i64
    %533 = llvm.extractvalue %379[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %534 = llvm.getelementptr %533[%528] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %535 = llvm.load %534 : !llvm.ptr -> f64
    llvm.br ^bb61(%22 : i64)
  ^bb61(%536: i64):  // 2 preds: ^bb60, ^bb62
    %537 = llvm.icmp "slt" %536, %19 : i64
    llvm.cond_br %537, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %538 = llvm.extractvalue %441[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %539 = llvm.mlir.constant(4 : index) : i64
    %540 = llvm.mul %532, %539 : i64
    %541 = llvm.add %540, %536 : i64
    %542 = llvm.getelementptr %538[%541] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %543 = llvm.load %542 : !llvm.ptr -> f64
    %544 = llvm.fmul %535, %543  : f64
    %545 = llvm.extractvalue %480[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %546 = llvm.extractvalue %480[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %547 = llvm.mul %515, %546 : i64
    %548 = llvm.mlir.constant(4 : index) : i64
    %549 = llvm.mul %527, %548 : i64
    %550 = llvm.add %547, %549 : i64
    %551 = llvm.add %550, %536 : i64
    %552 = llvm.getelementptr %545[%551] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %553 = llvm.load %552 : !llvm.ptr -> f64
    %554 = llvm.fadd %553, %544  : f64
    %555 = llvm.extractvalue %480[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %556 = llvm.extractvalue %480[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %557 = llvm.mul %515, %556 : i64
    %558 = llvm.mlir.constant(4 : index) : i64
    %559 = llvm.mul %527, %558 : i64
    %560 = llvm.add %557, %559 : i64
    %561 = llvm.add %560, %536 : i64
    %562 = llvm.getelementptr %555[%561] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %554, %562 : f64, !llvm.ptr
    %563 = llvm.add %536, %21 : i64
    llvm.br ^bb61(%563 : i64)
  ^bb63:  // pred: ^bb61
    %564 = llvm.add %528, %21 : i64
    llvm.br ^bb59(%564 : i64)
  ^bb64:  // pred: ^bb59
    %565 = llvm.add %516, %21 : i64
    llvm.br ^bb57(%565 : i64)
  ^bb65:  // pred: ^bb57
    %566 = llvm.add %504, %21 : i64
    llvm.br ^bb55(%566 : i64)
  ^bb66:  // pred: ^bb55
    %567 = llvm.mlir.constant(1 : index) : i64
    %568 = llvm.alloca %567 x !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %480, %568 : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, !llvm.ptr
    %569 = llvm.mlir.constant(3 : index) : i64
    %570 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %571 = llvm.insertvalue %569, %570[0] : !llvm.struct<(i64, ptr)> 
    %572 = llvm.insertvalue %568, %571[1] : !llvm.struct<(i64, ptr)> 
    %573 = llvm.extractvalue %572[0] : !llvm.struct<(i64, ptr)> 
    %574 = llvm.extractvalue %572[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%573, %574) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_3D_f64_i64(i32, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_3D_f64(i32, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
