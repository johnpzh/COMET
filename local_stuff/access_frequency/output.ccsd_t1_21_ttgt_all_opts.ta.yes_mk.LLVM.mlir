module {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(16 : index) : i64
    %2 = llvm.mlir.constant(6 : i32) : i32
    %3 = llvm.mlir.constant(8 : i32) : i32
    %4 = llvm.mlir.constant(8 : index) : i64
    %5 = llvm.mlir.constant(6 : index) : i64
    %6 = llvm.mlir.constant(3072 : index) : i64
    %7 = llvm.mlir.constant(4096 : index) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %10 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %11 = llvm.mlir.constant(2.300000e+00 : f64) : f64
    %12 = llvm.mlir.constant(16 : index) : i64
    %13 = llvm.mlir.constant(16 : index) : i64
    %14 = llvm.mlir.constant(16 : index) : i64
    %15 = llvm.mlir.constant(16 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(256 : index) : i64
    %18 = llvm.mlir.constant(4096 : index) : i64
    %19 = llvm.mlir.constant(65536 : index) : i64
    %20 = llvm.mlir.zero : !llvm.ptr
    %21 = llvm.getelementptr %20[65536] : (!llvm.ptr) -> !llvm.ptr, f64
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.mlir.constant(32 : index) : i64
    %24 = llvm.add %22, %23  : i64
    %25 = llvm.call @malloc(%24) : (i64) -> !llvm.ptr
    %26 = llvm.ptrtoint %25 : !llvm.ptr to i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.sub %23, %27  : i64
    %29 = llvm.add %26, %28  : i64
    %30 = llvm.urem %29, %23  : i64
    %31 = llvm.sub %29, %30  : i64
    %32 = llvm.inttoptr %31 : i64 to !llvm.ptr
    %33 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %34 = llvm.insertvalue %25, %33[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %12, %37[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %13, %38[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %14, %39[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %15, %40[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %18, %41[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %17, %42[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %15, %43[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %16, %44[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(16 : index) : i64
    %47 = llvm.mlir.constant(16 : index) : i64
    %48 = llvm.mlir.constant(16 : index) : i64
    %49 = llvm.mlir.constant(16 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(256 : index) : i64
    %52 = llvm.mlir.constant(4096 : index) : i64
    %53 = llvm.mlir.constant(65536 : index) : i64
    %54 = llvm.mlir.zero : !llvm.ptr
    %55 = llvm.getelementptr %54[65536] : (!llvm.ptr) -> !llvm.ptr, f64
    %56 = llvm.ptrtoint %55 : !llvm.ptr to i64
    %57 = llvm.mlir.constant(32 : index) : i64
    %58 = llvm.add %56, %57  : i64
    %59 = llvm.call @malloc(%58) : (i64) -> !llvm.ptr
    %60 = llvm.ptrtoint %59 : !llvm.ptr to i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.sub %57, %61  : i64
    %63 = llvm.add %60, %62  : i64
    %64 = llvm.urem %63, %57  : i64
    %65 = llvm.sub %63, %64  : i64
    %66 = llvm.inttoptr %65 : i64 to !llvm.ptr
    %67 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %68 = llvm.insertvalue %59, %67[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %46, %71[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %47, %72[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %48, %73[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %49, %74[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %52, %75[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %51, %76[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %49, %77[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %50, %78[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(16 : index) : i64
    %81 = llvm.mlir.constant(16 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(256 : index) : i64
    %84 = llvm.mlir.zero : !llvm.ptr
    %85 = llvm.getelementptr %84[256] : (!llvm.ptr) -> !llvm.ptr, f64
    %86 = llvm.ptrtoint %85 : !llvm.ptr to i64
    %87 = llvm.mlir.constant(32 : index) : i64
    %88 = llvm.add %86, %87  : i64
    %89 = llvm.call @malloc(%88) : (i64) -> !llvm.ptr
    %90 = llvm.ptrtoint %89 : !llvm.ptr to i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.sub %87, %91  : i64
    %93 = llvm.add %90, %92  : i64
    %94 = llvm.urem %93, %87  : i64
    %95 = llvm.sub %93, %94  : i64
    %96 = llvm.inttoptr %95 : i64 to !llvm.ptr
    %97 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %98 = llvm.insertvalue %89, %97[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %99 = llvm.insertvalue %96, %98[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.insertvalue %100, %99[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.insertvalue %80, %101[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.insertvalue %81, %102[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.insertvalue %81, %103[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.insertvalue %82, %104[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%8 : i64)
  ^bb1(%106: i64):  // 2 preds: ^bb0, ^bb8
    %107 = llvm.icmp "slt" %106, %1 : i64
    llvm.cond_br %107, ^bb2(%8 : i64), ^bb9(%8 : i64)
  ^bb2(%108: i64):  // 2 preds: ^bb1, ^bb7
    %109 = llvm.icmp "slt" %108, %1 : i64
    llvm.cond_br %109, ^bb3(%8 : i64), ^bb8
  ^bb3(%110: i64):  // 2 preds: ^bb2, ^bb6
    %111 = llvm.icmp "slt" %110, %1 : i64
    llvm.cond_br %111, ^bb4(%8 : i64), ^bb7
  ^bb4(%112: i64):  // 2 preds: ^bb3, ^bb5
    %113 = llvm.icmp "slt" %112, %1 : i64
    llvm.cond_br %113, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %114 = llvm.mlir.constant(4096 : index) : i64
    %115 = llvm.mul %106, %114  : i64
    %116 = llvm.mlir.constant(256 : index) : i64
    %117 = llvm.mul %108, %116  : i64
    %118 = llvm.add %115, %117  : i64
    %119 = llvm.mlir.constant(16 : index) : i64
    %120 = llvm.mul %110, %119  : i64
    %121 = llvm.add %118, %120  : i64
    %122 = llvm.add %121, %112  : i64
    %123 = llvm.getelementptr %32[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %11, %123 : f64, !llvm.ptr
    %124 = llvm.add %112, %0  : i64
    llvm.br ^bb4(%124 : i64)
  ^bb6:  // pred: ^bb4
    %125 = llvm.add %110, %0  : i64
    llvm.br ^bb3(%125 : i64)
  ^bb7:  // pred: ^bb3
    %126 = llvm.add %108, %0  : i64
    llvm.br ^bb2(%126 : i64)
  ^bb8:  // pred: ^bb2
    %127 = llvm.add %106, %0  : i64
    llvm.br ^bb1(%127 : i64)
  ^bb9(%128: i64):  // 2 preds: ^bb1, ^bb16
    %129 = llvm.icmp "slt" %128, %1 : i64
    llvm.cond_br %129, ^bb10(%8 : i64), ^bb17(%8 : i64)
  ^bb10(%130: i64):  // 2 preds: ^bb9, ^bb15
    %131 = llvm.icmp "slt" %130, %1 : i64
    llvm.cond_br %131, ^bb11(%8 : i64), ^bb16
  ^bb11(%132: i64):  // 2 preds: ^bb10, ^bb14
    %133 = llvm.icmp "slt" %132, %1 : i64
    llvm.cond_br %133, ^bb12(%8 : i64), ^bb15
  ^bb12(%134: i64):  // 2 preds: ^bb11, ^bb13
    %135 = llvm.icmp "slt" %134, %1 : i64
    llvm.cond_br %135, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %136 = llvm.mlir.constant(4096 : index) : i64
    %137 = llvm.mul %128, %136  : i64
    %138 = llvm.mlir.constant(256 : index) : i64
    %139 = llvm.mul %130, %138  : i64
    %140 = llvm.add %137, %139  : i64
    %141 = llvm.mlir.constant(16 : index) : i64
    %142 = llvm.mul %132, %141  : i64
    %143 = llvm.add %140, %142  : i64
    %144 = llvm.add %143, %134  : i64
    %145 = llvm.getelementptr %66[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %145 : f64, !llvm.ptr
    %146 = llvm.add %134, %0  : i64
    llvm.br ^bb12(%146 : i64)
  ^bb14:  // pred: ^bb12
    %147 = llvm.add %132, %0  : i64
    llvm.br ^bb11(%147 : i64)
  ^bb15:  // pred: ^bb11
    %148 = llvm.add %130, %0  : i64
    llvm.br ^bb10(%148 : i64)
  ^bb16:  // pred: ^bb10
    %149 = llvm.add %128, %0  : i64
    llvm.br ^bb9(%149 : i64)
  ^bb17(%150: i64):  // 2 preds: ^bb9, ^bb20
    %151 = llvm.icmp "slt" %150, %1 : i64
    llvm.cond_br %151, ^bb18(%8 : i64), ^bb21
  ^bb18(%152: i64):  // 2 preds: ^bb17, ^bb19
    %153 = llvm.icmp "slt" %152, %1 : i64
    llvm.cond_br %153, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %154 = llvm.mlir.constant(16 : index) : i64
    %155 = llvm.mul %150, %154  : i64
    %156 = llvm.add %155, %152  : i64
    %157 = llvm.getelementptr %96[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %157 : f64, !llvm.ptr
    %158 = llvm.add %152, %0  : i64
    llvm.br ^bb18(%158 : i64)
  ^bb20:  // pred: ^bb18
    %159 = llvm.add %150, %0  : i64
    llvm.br ^bb17(%159 : i64)
  ^bb21:  // pred: ^bb17
    %160 = llvm.mlir.constant(16 : index) : i64
    %161 = llvm.mlir.constant(16 : index) : i64
    %162 = llvm.mlir.constant(16 : index) : i64
    %163 = llvm.mlir.constant(16 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(256 : index) : i64
    %166 = llvm.mlir.constant(4096 : index) : i64
    %167 = llvm.mlir.constant(65536 : index) : i64
    %168 = llvm.mlir.zero : !llvm.ptr
    %169 = llvm.getelementptr %168[65536] : (!llvm.ptr) -> !llvm.ptr, f64
    %170 = llvm.ptrtoint %169 : !llvm.ptr to i64
    %171 = llvm.mlir.constant(32 : index) : i64
    %172 = llvm.add %170, %171  : i64
    %173 = llvm.call @malloc(%172) : (i64) -> !llvm.ptr
    %174 = llvm.ptrtoint %173 : !llvm.ptr to i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.sub %171, %175  : i64
    %177 = llvm.add %174, %176  : i64
    %178 = llvm.urem %177, %171  : i64
    %179 = llvm.sub %177, %178  : i64
    %180 = llvm.inttoptr %179 : i64 to !llvm.ptr
    %181 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %182 = llvm.insertvalue %173, %181[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.insertvalue %180, %182[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.insertvalue %184, %183[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.insertvalue %160, %185[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.insertvalue %161, %186[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %162, %187[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %163, %188[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %166, %189[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %165, %190[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %163, %191[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %164, %192[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb22(%8 : i64)
  ^bb22(%194: i64):  // 2 preds: ^bb21, ^bb29
    %195 = llvm.icmp "slt" %194, %1 : i64
    llvm.cond_br %195, ^bb23(%8 : i64), ^bb30
  ^bb23(%196: i64):  // 2 preds: ^bb22, ^bb28
    %197 = llvm.icmp "slt" %196, %1 : i64
    llvm.cond_br %197, ^bb24(%8 : i64), ^bb29
  ^bb24(%198: i64):  // 2 preds: ^bb23, ^bb27
    %199 = llvm.icmp "slt" %198, %1 : i64
    llvm.cond_br %199, ^bb25(%8 : i64), ^bb28
  ^bb25(%200: i64):  // 2 preds: ^bb24, ^bb26
    %201 = llvm.icmp "slt" %200, %1 : i64
    llvm.cond_br %201, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %202 = llvm.mlir.constant(4096 : index) : i64
    %203 = llvm.mul %194, %202  : i64
    %204 = llvm.mlir.constant(256 : index) : i64
    %205 = llvm.mul %196, %204  : i64
    %206 = llvm.add %203, %205  : i64
    %207 = llvm.mlir.constant(16 : index) : i64
    %208 = llvm.mul %198, %207  : i64
    %209 = llvm.add %206, %208  : i64
    %210 = llvm.add %209, %200  : i64
    %211 = llvm.getelementptr %32[%210] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %212 = llvm.load %211 : !llvm.ptr -> f64
    %213 = llvm.mlir.constant(4096 : index) : i64
    %214 = llvm.mul %194, %213  : i64
    %215 = llvm.mlir.constant(256 : index) : i64
    %216 = llvm.mul %198, %215  : i64
    %217 = llvm.add %214, %216  : i64
    %218 = llvm.mlir.constant(16 : index) : i64
    %219 = llvm.mul %200, %218  : i64
    %220 = llvm.add %217, %219  : i64
    %221 = llvm.add %220, %196  : i64
    %222 = llvm.getelementptr %180[%221] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %212, %222 : f64, !llvm.ptr
    %223 = llvm.add %200, %0  : i64
    llvm.br ^bb25(%223 : i64)
  ^bb27:  // pred: ^bb25
    %224 = llvm.add %198, %0  : i64
    llvm.br ^bb24(%224 : i64)
  ^bb28:  // pred: ^bb24
    %225 = llvm.add %196, %0  : i64
    llvm.br ^bb23(%225 : i64)
  ^bb29:  // pred: ^bb23
    %226 = llvm.add %194, %0  : i64
    llvm.br ^bb22(%226 : i64)
  ^bb30:  // pred: ^bb22
    llvm.br ^bb31(%8 : i64)
  ^bb31(%227: i64):  // 2 preds: ^bb30, ^bb41
    %228 = llvm.icmp "slt" %227, %7 : i64
    llvm.cond_br %228, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    %229 = llvm.sub %7, %227  : i64
    %230 = llvm.icmp "slt" %229, %6 : i64
    %231 = llvm.select %230, %229, %6 : i1, i64
    %232 = llvm.mlir.constant(16 : index) : i64
    %233 = llvm.mul %227, %232  : i64
    llvm.br ^bb33(%8 : i64)
  ^bb33(%234: i64):  // 2 preds: ^bb32, ^bb40
    %235 = llvm.icmp "slt" %234, %1 : i64
    llvm.cond_br %235, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    %236 = llvm.sub %1, %234  : i64
    %237 = llvm.icmp "slt" %236, %5 : i64
    %238 = llvm.select %237, %236, %5 : i1, i64
    llvm.br ^bb35(%8 : i64)
  ^bb35(%239: i64):  // 2 preds: ^bb34, ^bb39
    %240 = llvm.icmp "slt" %239, %1 : i64
    llvm.cond_br %240, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    %241 = llvm.sub %1, %239  : i64
    %242 = llvm.icmp "slt" %241, %4 : i64
    %243 = llvm.select %242, %241, %4 : i1, i64
    llvm.br ^bb37(%8 : i64)
  ^bb37(%244: i64):  // 2 preds: ^bb36, ^bb38
    %245 = llvm.icmp "slt" %244, %231 : i64
    llvm.cond_br %245, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %246 = llvm.sub %231, %244  : i64
    %247 = llvm.icmp "slt" %246, %6 : i64
    %248 = llvm.select %247, %246, %6 : i1, i64
    %249 = llvm.mlir.constant(4096 : index) : i64
    %250 = llvm.mul %239, %249  : i64
    %251 = llvm.add %227, %250  : i64
    %252 = llvm.add %251, %244  : i64
    %253 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %254 = llvm.insertvalue %173, %253[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %255 = llvm.insertvalue %180, %254[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %256 = llvm.insertvalue %252, %255[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %257 = llvm.insertvalue %243, %256[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %258 = llvm.mlir.constant(4096 : index) : i64
    %259 = llvm.insertvalue %258, %257[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %260 = llvm.insertvalue %248, %259[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.insertvalue %261, %260[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %263 = llvm.mlir.constant(16 : index) : i64
    %264 = llvm.mul %244, %263  : i64
    %265 = llvm.add %233, %264  : i64
    %266 = llvm.add %265, %234  : i64
    %267 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %268 = llvm.insertvalue %59, %267[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %269 = llvm.insertvalue %66, %268[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %270 = llvm.insertvalue %266, %269[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %271 = llvm.insertvalue %248, %270[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %272 = llvm.mlir.constant(16 : index) : i64
    %273 = llvm.insertvalue %272, %271[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %274 = llvm.insertvalue %238, %273[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.insertvalue %275, %274[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %277 = llvm.mlir.constant(16 : index) : i64
    %278 = llvm.mul %239, %277  : i64
    %279 = llvm.add %278, %234  : i64
    %280 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %281 = llvm.insertvalue %89, %280[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %282 = llvm.insertvalue %96, %281[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %283 = llvm.insertvalue %279, %282[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %284 = llvm.insertvalue %243, %283[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %285 = llvm.mlir.constant(16 : index) : i64
    %286 = llvm.insertvalue %285, %284[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %287 = llvm.insertvalue %238, %286[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.insertvalue %288, %287[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%173, %180, %252, %243, %248, %258, %261, %59, %66, %266, %248, %238, %272, %275, %89, %96, %279, %243, %238, %285, %288, %3, %2) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i32, i32) -> ()
    %290 = llvm.add %244, %6  : i64
    llvm.br ^bb37(%290 : i64)
  ^bb39:  // pred: ^bb37
    %291 = llvm.add %239, %4  : i64
    llvm.br ^bb35(%291 : i64)
  ^bb40:  // pred: ^bb35
    %292 = llvm.add %234, %5  : i64
    llvm.br ^bb33(%292 : i64)
  ^bb41:  // pred: ^bb33
    %293 = llvm.add %227, %6  : i64
    llvm.br ^bb31(%293 : i64)
  ^bb42:  // pred: ^bb31
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.alloca %294 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %105, %295 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %298 = llvm.insertvalue %296, %297[0] : !llvm.struct<(i64, ptr)> 
    %299 = llvm.insertvalue %295, %298[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%296, %295) : (i64, !llvm.ptr) -> ()
    llvm.call @free(%173) : (!llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr, %arg15: !llvm.ptr, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i32, %arg22: i32) attributes {llvm.emit_c_interface, sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.constant(1 : index) : i64
    %9 = llvm.alloca %8 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %7, %9 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %10 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %11 = llvm.insertvalue %arg7, %10[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg8, %11[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg9, %12[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg10, %13[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg12, %14[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg11, %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg13, %16[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.alloca %18 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %17, %19 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %20 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %21 = llvm.insertvalue %arg14, %20[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg15, %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg16, %22[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %arg17, %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %arg19, %24[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %arg18, %25[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %arg20, %26[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.alloca %28 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %27, %29 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    llvm.call @_mlir_ciface_linalg_matmul_viewsxs_viewsxs_viewsxs(%9, %19, %29, %arg21, %arg22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.return
  }
  llvm.func @_mlir_ciface_linalg_matmul_viewsxs_viewsxs_viewsxs(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) attributes {llvm.emit_c_interface, sym_visibility = "private"}
  llvm.func @print_flops(f64) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
