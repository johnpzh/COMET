module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(4 : index) : i64
    %1 = llvm.mlir.constant(6 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(6 : i64) : i64
    %6 = llvm.mlir.constant(8 : i64) : i64
    %7 = llvm.mlir.constant(4 : i64) : i64
    %8 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %9 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %10 = llvm.mlir.constant(1.200000e+00 : f64) : f64
    %11 = llvm.mlir.constant(1.700000e+00 : f64) : f64
    %12 = llvm.mlir.constant(8 : index) : i64
    %13 = llvm.mlir.constant(6 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(48 : index) : i64
    %16 = llvm.mlir.zero : !llvm.ptr
    %17 = llvm.getelementptr %16[48] : (!llvm.ptr) -> !llvm.ptr, f64
    %18 = llvm.ptrtoint %17 : !llvm.ptr to i64
    %19 = llvm.mlir.constant(32 : index) : i64
    %20 = llvm.add %18, %19  : i64
    %21 = llvm.call @malloc(%20) : (i64) -> !llvm.ptr
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.sub %19, %23  : i64
    %25 = llvm.add %22, %24  : i64
    %26 = llvm.urem %25, %19  : i64
    %27 = llvm.sub %25, %26  : i64
    %28 = llvm.inttoptr %27 : i64 to !llvm.ptr
    %29 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %30 = llvm.insertvalue %21, %29[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %12, %33[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.insertvalue %13, %34[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %13, %35[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.insertvalue %14, %36[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%38: i64):  // 2 preds: ^bb0, ^bb4
    %39 = llvm.icmp "slt" %38, %2 : i64
    llvm.cond_br %39, ^bb2(%4 : i64), ^bb5
  ^bb2(%40: i64):  // 2 preds: ^bb1, ^bb3
    %41 = llvm.icmp "slt" %40, %1 : i64
    llvm.cond_br %41, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %42 = llvm.mlir.constant(6 : index) : i64
    %43 = llvm.mul %38, %42  : i64
    %44 = llvm.add %43, %40  : i64
    %45 = llvm.getelementptr %28[%44] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %11, %45 : f64, !llvm.ptr
    %46 = llvm.add %40, %3  : i64
    llvm.br ^bb2(%46 : i64)
  ^bb4:  // pred: ^bb2
    %47 = llvm.add %38, %3  : i64
    llvm.br ^bb1(%47 : i64)
  ^bb5:  // pred: ^bb1
    %48 = llvm.mlir.constant(6 : index) : i64
    %49 = llvm.mlir.constant(4 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(24 : index) : i64
    %52 = llvm.mlir.zero : !llvm.ptr
    %53 = llvm.getelementptr %52[24] : (!llvm.ptr) -> !llvm.ptr, f64
    %54 = llvm.ptrtoint %53 : !llvm.ptr to i64
    %55 = llvm.mlir.constant(32 : index) : i64
    %56 = llvm.add %54, %55  : i64
    %57 = llvm.call @malloc(%56) : (i64) -> !llvm.ptr
    %58 = llvm.ptrtoint %57 : !llvm.ptr to i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.sub %55, %59  : i64
    %61 = llvm.add %58, %60  : i64
    %62 = llvm.urem %61, %55  : i64
    %63 = llvm.sub %61, %62  : i64
    %64 = llvm.inttoptr %63 : i64 to !llvm.ptr
    %65 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %66 = llvm.insertvalue %57, %65[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.insertvalue %64, %66[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.insertvalue %68, %67[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.insertvalue %48, %69[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.insertvalue %49, %70[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.insertvalue %49, %71[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.insertvalue %50, %72[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb6(%4 : i64)
  ^bb6(%74: i64):  // 2 preds: ^bb5, ^bb9
    %75 = llvm.icmp "slt" %74, %1 : i64
    llvm.cond_br %75, ^bb7(%4 : i64), ^bb10
  ^bb7(%76: i64):  // 2 preds: ^bb6, ^bb8
    %77 = llvm.icmp "slt" %76, %0 : i64
    llvm.cond_br %77, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %78 = llvm.mlir.constant(4 : index) : i64
    %79 = llvm.mul %74, %78  : i64
    %80 = llvm.add %79, %76  : i64
    %81 = llvm.getelementptr %64[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %81 : f64, !llvm.ptr
    %82 = llvm.add %76, %3  : i64
    llvm.br ^bb7(%82 : i64)
  ^bb9:  // pred: ^bb7
    %83 = llvm.add %74, %3  : i64
    llvm.br ^bb6(%83 : i64)
  ^bb10:  // pred: ^bb6
    %84 = llvm.mlir.constant(4 : index) : i64
    %85 = llvm.mlir.constant(4 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(16 : index) : i64
    %88 = llvm.mlir.zero : !llvm.ptr
    %89 = llvm.getelementptr %88[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %90 = llvm.ptrtoint %89 : !llvm.ptr to i64
    %91 = llvm.mlir.constant(32 : index) : i64
    %92 = llvm.add %90, %91  : i64
    %93 = llvm.call @malloc(%92) : (i64) -> !llvm.ptr
    %94 = llvm.ptrtoint %93 : !llvm.ptr to i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.sub %91, %95  : i64
    %97 = llvm.add %94, %96  : i64
    %98 = llvm.urem %97, %91  : i64
    %99 = llvm.sub %97, %98  : i64
    %100 = llvm.inttoptr %99 : i64 to !llvm.ptr
    %101 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %102 = llvm.insertvalue %93, %101[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.insertvalue %100, %102[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.insertvalue %104, %103[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.insertvalue %84, %105[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.insertvalue %85, %106[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.insertvalue %85, %107[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.insertvalue %86, %108[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb11(%4 : i64)
  ^bb11(%110: i64):  // 2 preds: ^bb10, ^bb14
    %111 = llvm.icmp "slt" %110, %0 : i64
    llvm.cond_br %111, ^bb12(%4 : i64), ^bb15
  ^bb12(%112: i64):  // 2 preds: ^bb11, ^bb13
    %113 = llvm.icmp "slt" %112, %0 : i64
    llvm.cond_br %113, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %114 = llvm.mlir.constant(4 : index) : i64
    %115 = llvm.mul %110, %114  : i64
    %116 = llvm.add %115, %112  : i64
    %117 = llvm.getelementptr %100[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %117 : f64, !llvm.ptr
    %118 = llvm.add %112, %3  : i64
    llvm.br ^bb12(%118 : i64)
  ^bb14:  // pred: ^bb12
    %119 = llvm.add %110, %3  : i64
    llvm.br ^bb11(%119 : i64)
  ^bb15:  // pred: ^bb11
    %120 = llvm.mlir.constant(8 : index) : i64
    %121 = llvm.mlir.constant(4 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.constant(32 : index) : i64
    %124 = llvm.mlir.zero : !llvm.ptr
    %125 = llvm.getelementptr %124[32] : (!llvm.ptr) -> !llvm.ptr, f64
    %126 = llvm.ptrtoint %125 : !llvm.ptr to i64
    %127 = llvm.mlir.constant(32 : index) : i64
    %128 = llvm.add %126, %127  : i64
    %129 = llvm.call @malloc(%128) : (i64) -> !llvm.ptr
    %130 = llvm.ptrtoint %129 : !llvm.ptr to i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.sub %127, %131  : i64
    %133 = llvm.add %130, %132  : i64
    %134 = llvm.urem %133, %127  : i64
    %135 = llvm.sub %133, %134  : i64
    %136 = llvm.inttoptr %135 : i64 to !llvm.ptr
    %137 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %138 = llvm.insertvalue %129, %137[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %139 = llvm.insertvalue %136, %138[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %140 = llvm.mlir.constant(0 : index) : i64
    %141 = llvm.insertvalue %140, %139[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %142 = llvm.insertvalue %120, %141[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %143 = llvm.insertvalue %121, %142[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %144 = llvm.insertvalue %121, %143[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %145 = llvm.insertvalue %122, %144[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb16(%4 : i64)
  ^bb16(%146: i64):  // 2 preds: ^bb15, ^bb19
    %147 = llvm.icmp "slt" %146, %2 : i64
    llvm.cond_br %147, ^bb17(%4 : i64), ^bb20
  ^bb17(%148: i64):  // 2 preds: ^bb16, ^bb18
    %149 = llvm.icmp "slt" %148, %0 : i64
    llvm.cond_br %149, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %150 = llvm.mlir.constant(4 : index) : i64
    %151 = llvm.mul %146, %150  : i64
    %152 = llvm.add %151, %148  : i64
    %153 = llvm.getelementptr %136[%152] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %153 : f64, !llvm.ptr
    %154 = llvm.add %148, %3  : i64
    llvm.br ^bb17(%154 : i64)
  ^bb19:  // pred: ^bb17
    %155 = llvm.add %146, %3  : i64
    llvm.br ^bb16(%155 : i64)
  ^bb20:  // pred: ^bb16
    %156 = llvm.mlir.constant(8 : index) : i64
    %157 = llvm.mlir.constant(4 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(32 : index) : i64
    %160 = llvm.mlir.zero : !llvm.ptr
    %161 = llvm.getelementptr %160[32] : (!llvm.ptr) -> !llvm.ptr, f64
    %162 = llvm.ptrtoint %161 : !llvm.ptr to i64
    %163 = llvm.mlir.constant(32 : index) : i64
    %164 = llvm.add %162, %163  : i64
    %165 = llvm.call @malloc(%164) : (i64) -> !llvm.ptr
    %166 = llvm.ptrtoint %165 : !llvm.ptr to i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.sub %163, %167  : i64
    %169 = llvm.add %166, %168  : i64
    %170 = llvm.urem %169, %163  : i64
    %171 = llvm.sub %169, %170  : i64
    %172 = llvm.inttoptr %171 : i64 to !llvm.ptr
    %173 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %174 = llvm.insertvalue %165, %173[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %175 = llvm.insertvalue %172, %174[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.insertvalue %176, %175[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %178 = llvm.insertvalue %156, %177[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %179 = llvm.insertvalue %157, %178[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %180 = llvm.insertvalue %157, %179[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %181 = llvm.insertvalue %158, %180[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb21(%4 : i64)
  ^bb21(%182: i64):  // 2 preds: ^bb20, ^bb24
    %183 = llvm.icmp "slt" %182, %2 : i64
    llvm.cond_br %183, ^bb22(%4 : i64), ^bb25(%4 : i64)
  ^bb22(%184: i64):  // 2 preds: ^bb21, ^bb23
    %185 = llvm.icmp "slt" %184, %0 : i64
    llvm.cond_br %185, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %186 = llvm.mlir.constant(4 : index) : i64
    %187 = llvm.mul %182, %186  : i64
    %188 = llvm.add %187, %184  : i64
    %189 = llvm.getelementptr %172[%188] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %189 : f64, !llvm.ptr
    %190 = llvm.add %184, %3  : i64
    llvm.br ^bb22(%190 : i64)
  ^bb24:  // pred: ^bb22
    %191 = llvm.add %182, %3  : i64
    llvm.br ^bb21(%191 : i64)
  ^bb25(%192: i64):  // 2 preds: ^bb21, ^bb30
    %193 = llvm.icmp "slt" %192, %7 : i64
    llvm.cond_br %193, ^bb26(%4 : i64), ^bb31(%4 : i64)
  ^bb26(%194: i64):  // 2 preds: ^bb25, ^bb29
    %195 = llvm.icmp "slt" %194, %6 : i64
    llvm.cond_br %195, ^bb27(%4 : i64), ^bb30
  ^bb27(%196: i64):  // 2 preds: ^bb26, ^bb28
    %197 = llvm.icmp "slt" %196, %5 : i64
    llvm.cond_br %197, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %198 = llvm.mlir.constant(6 : index) : i64
    %199 = llvm.mul %194, %198  : i64
    %200 = llvm.add %199, %196  : i64
    %201 = llvm.getelementptr %28[%200] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %202 = llvm.load %201 : !llvm.ptr -> f64
    %203 = llvm.mlir.constant(4 : index) : i64
    %204 = llvm.mul %196, %203  : i64
    %205 = llvm.add %204, %192  : i64
    %206 = llvm.getelementptr %64[%205] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %207 = llvm.load %206 : !llvm.ptr -> f64
    %208 = llvm.fmul %202, %207  : f64
    %209 = llvm.mlir.constant(4 : index) : i64
    %210 = llvm.mul %194, %209  : i64
    %211 = llvm.add %210, %192  : i64
    %212 = llvm.getelementptr %172[%211] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %213 = llvm.load %212 : !llvm.ptr -> f64
    %214 = llvm.fadd %213, %208  : f64
    %215 = llvm.mlir.constant(4 : index) : i64
    %216 = llvm.mul %194, %215  : i64
    %217 = llvm.add %216, %192  : i64
    %218 = llvm.getelementptr %172[%217] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %214, %218 : f64, !llvm.ptr
    %219 = llvm.add %196, %3  : i64
    llvm.br ^bb27(%219 : i64)
  ^bb29:  // pred: ^bb27
    %220 = llvm.add %194, %3  : i64
    llvm.br ^bb26(%220 : i64)
  ^bb30:  // pred: ^bb26
    %221 = llvm.add %192, %3  : i64
    llvm.br ^bb25(%221 : i64)
  ^bb31(%222: i64):  // 2 preds: ^bb25, ^bb36
    %223 = llvm.icmp "slt" %222, %7 : i64
    llvm.cond_br %223, ^bb32(%4 : i64), ^bb37
  ^bb32(%224: i64):  // 2 preds: ^bb31, ^bb35
    %225 = llvm.icmp "slt" %224, %6 : i64
    llvm.cond_br %225, ^bb33(%4 : i64), ^bb36
  ^bb33(%226: i64):  // 2 preds: ^bb32, ^bb34
    %227 = llvm.icmp "slt" %226, %7 : i64
    llvm.cond_br %227, ^bb34, ^bb35
  ^bb34:  // pred: ^bb33
    %228 = llvm.mlir.constant(4 : index) : i64
    %229 = llvm.mul %224, %228  : i64
    %230 = llvm.add %229, %222  : i64
    %231 = llvm.getelementptr %172[%230] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %232 = llvm.load %231 : !llvm.ptr -> f64
    %233 = llvm.mlir.constant(4 : index) : i64
    %234 = llvm.mul %222, %233  : i64
    %235 = llvm.add %234, %226  : i64
    %236 = llvm.getelementptr %100[%235] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %237 = llvm.load %236 : !llvm.ptr -> f64
    %238 = llvm.fmul %232, %237  : f64
    %239 = llvm.mlir.constant(4 : index) : i64
    %240 = llvm.mul %224, %239  : i64
    %241 = llvm.add %240, %226  : i64
    %242 = llvm.getelementptr %136[%241] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %243 = llvm.load %242 : !llvm.ptr -> f64
    %244 = llvm.fadd %243, %238  : f64
    %245 = llvm.mlir.constant(4 : index) : i64
    %246 = llvm.mul %224, %245  : i64
    %247 = llvm.add %246, %226  : i64
    %248 = llvm.getelementptr %136[%247] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %244, %248 : f64, !llvm.ptr
    %249 = llvm.add %226, %3  : i64
    llvm.br ^bb33(%249 : i64)
  ^bb35:  // pred: ^bb33
    %250 = llvm.add %224, %3  : i64
    llvm.br ^bb32(%250 : i64)
  ^bb36:  // pred: ^bb32
    %251 = llvm.add %222, %3  : i64
    llvm.br ^bb31(%251 : i64)
  ^bb37:  // pred: ^bb31
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.alloca %252 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %145, %253 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %254 = llvm.mlir.constant(2 : index) : i64
    %255 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %256 = llvm.insertvalue %254, %255[0] : !llvm.struct<(i64, ptr)> 
    %257 = llvm.insertvalue %253, %256[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%254, %253) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_i64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
