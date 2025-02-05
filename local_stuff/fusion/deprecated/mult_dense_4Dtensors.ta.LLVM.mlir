module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(0 : index) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %5 = llvm.mlir.constant(3.600000e+00 : f64) : f64
    %6 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %7 = llvm.mlir.constant(2 : index) : i64
    %8 = llvm.mlir.constant(2 : index) : i64
    %9 = llvm.mlir.constant(2 : index) : i64
    %10 = llvm.mlir.constant(2 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(4 : index) : i64
    %13 = llvm.mlir.constant(8 : index) : i64
    %14 = llvm.mlir.constant(16 : index) : i64
    %15 = llvm.mlir.zero : !llvm.ptr
    %16 = llvm.getelementptr %15[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %17 = llvm.ptrtoint %16 : !llvm.ptr to i64
    %18 = llvm.mlir.constant(32 : index) : i64
    %19 = llvm.add %17, %18  : i64
    %20 = llvm.call @malloc(%19) : (i64) -> !llvm.ptr
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.sub %18, %22  : i64
    %24 = llvm.add %21, %23  : i64
    %25 = llvm.urem %24, %18  : i64
    %26 = llvm.sub %24, %25  : i64
    %27 = llvm.inttoptr %26 : i64 to !llvm.ptr
    %28 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %29 = llvm.insertvalue %20, %28[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.insertvalue %7, %32[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %8, %33[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %9, %34[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.insertvalue %10, %35[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.insertvalue %13, %36[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %12, %37[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %10, %38[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %11, %39[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb1(%2 : i64)
  ^bb1(%41: i64):  // 2 preds: ^bb0, ^bb8
    %42 = llvm.icmp "slt" %41, %0 : i64
    llvm.cond_br %42, ^bb2(%2 : i64), ^bb9
  ^bb2(%43: i64):  // 2 preds: ^bb1, ^bb7
    %44 = llvm.icmp "slt" %43, %0 : i64
    llvm.cond_br %44, ^bb3(%2 : i64), ^bb8
  ^bb3(%45: i64):  // 2 preds: ^bb2, ^bb6
    %46 = llvm.icmp "slt" %45, %0 : i64
    llvm.cond_br %46, ^bb4(%2 : i64), ^bb7
  ^bb4(%47: i64):  // 2 preds: ^bb3, ^bb5
    %48 = llvm.icmp "slt" %47, %0 : i64
    llvm.cond_br %48, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %49 = llvm.mlir.constant(8 : index) : i64
    %50 = llvm.mul %41, %49  : i64
    %51 = llvm.mlir.constant(4 : index) : i64
    %52 = llvm.mul %43, %51  : i64
    %53 = llvm.add %50, %52  : i64
    %54 = llvm.mlir.constant(2 : index) : i64
    %55 = llvm.mul %45, %54  : i64
    %56 = llvm.add %53, %55  : i64
    %57 = llvm.add %56, %47  : i64
    %58 = llvm.getelementptr %27[%57] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %58 : f64, !llvm.ptr
    %59 = llvm.add %47, %1  : i64
    llvm.br ^bb4(%59 : i64)
  ^bb6:  // pred: ^bb4
    %60 = llvm.add %45, %1  : i64
    llvm.br ^bb3(%60 : i64)
  ^bb7:  // pred: ^bb3
    %61 = llvm.add %43, %1  : i64
    llvm.br ^bb2(%61 : i64)
  ^bb8:  // pred: ^bb2
    %62 = llvm.add %41, %1  : i64
    llvm.br ^bb1(%62 : i64)
  ^bb9:  // pred: ^bb1
    %63 = llvm.mlir.constant(2 : index) : i64
    %64 = llvm.mlir.constant(2 : index) : i64
    %65 = llvm.mlir.constant(2 : index) : i64
    %66 = llvm.mlir.constant(2 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.constant(4 : index) : i64
    %69 = llvm.mlir.constant(8 : index) : i64
    %70 = llvm.mlir.constant(16 : index) : i64
    %71 = llvm.mlir.zero : !llvm.ptr
    %72 = llvm.getelementptr %71[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %73 = llvm.ptrtoint %72 : !llvm.ptr to i64
    %74 = llvm.mlir.constant(32 : index) : i64
    %75 = llvm.add %73, %74  : i64
    %76 = llvm.call @malloc(%75) : (i64) -> !llvm.ptr
    %77 = llvm.ptrtoint %76 : !llvm.ptr to i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.sub %74, %78  : i64
    %80 = llvm.add %77, %79  : i64
    %81 = llvm.urem %80, %74  : i64
    %82 = llvm.sub %80, %81  : i64
    %83 = llvm.inttoptr %82 : i64 to !llvm.ptr
    %84 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %85 = llvm.insertvalue %76, %84[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.insertvalue %83, %85[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.insertvalue %87, %86[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.insertvalue %63, %88[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.insertvalue %64, %89[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %65, %90[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %66, %91[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %69, %92[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %68, %93[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %66, %94[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %67, %95[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb10(%2 : i64)
  ^bb10(%97: i64):  // 2 preds: ^bb9, ^bb17
    %98 = llvm.icmp "slt" %97, %0 : i64
    llvm.cond_br %98, ^bb11(%2 : i64), ^bb18
  ^bb11(%99: i64):  // 2 preds: ^bb10, ^bb16
    %100 = llvm.icmp "slt" %99, %0 : i64
    llvm.cond_br %100, ^bb12(%2 : i64), ^bb17
  ^bb12(%101: i64):  // 2 preds: ^bb11, ^bb15
    %102 = llvm.icmp "slt" %101, %0 : i64
    llvm.cond_br %102, ^bb13(%2 : i64), ^bb16
  ^bb13(%103: i64):  // 2 preds: ^bb12, ^bb14
    %104 = llvm.icmp "slt" %103, %0 : i64
    llvm.cond_br %104, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %105 = llvm.mlir.constant(8 : index) : i64
    %106 = llvm.mul %97, %105  : i64
    %107 = llvm.mlir.constant(4 : index) : i64
    %108 = llvm.mul %99, %107  : i64
    %109 = llvm.add %106, %108  : i64
    %110 = llvm.mlir.constant(2 : index) : i64
    %111 = llvm.mul %101, %110  : i64
    %112 = llvm.add %109, %111  : i64
    %113 = llvm.add %112, %103  : i64
    %114 = llvm.getelementptr %83[%113] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %114 : f64, !llvm.ptr
    %115 = llvm.add %103, %1  : i64
    llvm.br ^bb13(%115 : i64)
  ^bb15:  // pred: ^bb13
    %116 = llvm.add %101, %1  : i64
    llvm.br ^bb12(%116 : i64)
  ^bb16:  // pred: ^bb12
    %117 = llvm.add %99, %1  : i64
    llvm.br ^bb11(%117 : i64)
  ^bb17:  // pred: ^bb11
    %118 = llvm.add %97, %1  : i64
    llvm.br ^bb10(%118 : i64)
  ^bb18:  // pred: ^bb10
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.mlir.constant(2 : index) : i64
    %122 = llvm.mlir.constant(2 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(4 : index) : i64
    %125 = llvm.mlir.constant(8 : index) : i64
    %126 = llvm.mlir.constant(16 : index) : i64
    %127 = llvm.mlir.zero : !llvm.ptr
    %128 = llvm.getelementptr %127[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %129 = llvm.ptrtoint %128 : !llvm.ptr to i64
    %130 = llvm.mlir.constant(32 : index) : i64
    %131 = llvm.add %129, %130  : i64
    %132 = llvm.call @malloc(%131) : (i64) -> !llvm.ptr
    %133 = llvm.ptrtoint %132 : !llvm.ptr to i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.sub %130, %134  : i64
    %136 = llvm.add %133, %135  : i64
    %137 = llvm.urem %136, %130  : i64
    %138 = llvm.sub %136, %137  : i64
    %139 = llvm.inttoptr %138 : i64 to !llvm.ptr
    %140 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %141 = llvm.insertvalue %132, %140[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.insertvalue %139, %141[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = llvm.insertvalue %143, %142[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %119, %144[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %120, %145[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %121, %146[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %122, %147[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %125, %148[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %124, %149[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %122, %150[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %123, %151[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb19(%2 : i64)
  ^bb19(%153: i64):  // 2 preds: ^bb18, ^bb26
    %154 = llvm.icmp "slt" %153, %0 : i64
    llvm.cond_br %154, ^bb20(%2 : i64), ^bb27(%2 : i64)
  ^bb20(%155: i64):  // 2 preds: ^bb19, ^bb25
    %156 = llvm.icmp "slt" %155, %0 : i64
    llvm.cond_br %156, ^bb21(%2 : i64), ^bb26
  ^bb21(%157: i64):  // 2 preds: ^bb20, ^bb24
    %158 = llvm.icmp "slt" %157, %0 : i64
    llvm.cond_br %158, ^bb22(%2 : i64), ^bb25
  ^bb22(%159: i64):  // 2 preds: ^bb21, ^bb23
    %160 = llvm.icmp "slt" %159, %0 : i64
    llvm.cond_br %160, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %161 = llvm.mlir.constant(8 : index) : i64
    %162 = llvm.mul %153, %161  : i64
    %163 = llvm.mlir.constant(4 : index) : i64
    %164 = llvm.mul %155, %163  : i64
    %165 = llvm.add %162, %164  : i64
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mul %157, %166  : i64
    %168 = llvm.add %165, %167  : i64
    %169 = llvm.add %168, %159  : i64
    %170 = llvm.getelementptr %139[%169] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %170 : f64, !llvm.ptr
    %171 = llvm.add %159, %1  : i64
    llvm.br ^bb22(%171 : i64)
  ^bb24:  // pred: ^bb22
    %172 = llvm.add %157, %1  : i64
    llvm.br ^bb21(%172 : i64)
  ^bb25:  // pred: ^bb21
    %173 = llvm.add %155, %1  : i64
    llvm.br ^bb20(%173 : i64)
  ^bb26:  // pred: ^bb20
    %174 = llvm.add %153, %1  : i64
    llvm.br ^bb19(%174 : i64)
  ^bb27(%175: i64):  // 2 preds: ^bb19, ^bb38
    %176 = llvm.icmp "slt" %175, %3 : i64
    llvm.cond_br %176, ^bb28(%2 : i64), ^bb39
  ^bb28(%177: i64):  // 2 preds: ^bb27, ^bb37
    %178 = llvm.icmp "slt" %177, %3 : i64
    llvm.cond_br %178, ^bb29(%2 : i64), ^bb38
  ^bb29(%179: i64):  // 2 preds: ^bb28, ^bb36
    %180 = llvm.icmp "slt" %179, %3 : i64
    llvm.cond_br %180, ^bb30(%2 : i64), ^bb37
  ^bb30(%181: i64):  // 2 preds: ^bb29, ^bb35
    %182 = llvm.icmp "slt" %181, %3 : i64
    llvm.cond_br %182, ^bb31(%2 : i64), ^bb36
  ^bb31(%183: i64):  // 2 preds: ^bb30, ^bb34
    %184 = llvm.icmp "slt" %183, %3 : i64
    llvm.cond_br %184, ^bb32(%2 : i64), ^bb35
  ^bb32(%185: i64):  // 2 preds: ^bb31, ^bb33
    %186 = llvm.icmp "slt" %185, %3 : i64
    llvm.cond_br %186, ^bb33, ^bb34
  ^bb33:  // pred: ^bb32
    %187 = llvm.mlir.constant(8 : index) : i64
    %188 = llvm.mul %175, %187  : i64
    %189 = llvm.mlir.constant(4 : index) : i64
    %190 = llvm.mul %183, %189  : i64
    %191 = llvm.add %188, %190  : i64
    %192 = llvm.mlir.constant(2 : index) : i64
    %193 = llvm.mul %181, %192  : i64
    %194 = llvm.add %191, %193  : i64
    %195 = llvm.add %194, %185  : i64
    %196 = llvm.getelementptr %27[%195] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %197 = llvm.load %196 : !llvm.ptr -> f64
    %198 = llvm.mlir.constant(8 : index) : i64
    %199 = llvm.mul %177, %198  : i64
    %200 = llvm.mlir.constant(4 : index) : i64
    %201 = llvm.mul %185, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.mlir.constant(2 : index) : i64
    %204 = llvm.mul %179, %203  : i64
    %205 = llvm.add %202, %204  : i64
    %206 = llvm.add %205, %183  : i64
    %207 = llvm.getelementptr %83[%206] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %208 = llvm.load %207 : !llvm.ptr -> f64
    %209 = llvm.fmul %197, %208  : f64
    %210 = llvm.mlir.constant(8 : index) : i64
    %211 = llvm.mul %175, %210  : i64
    %212 = llvm.mlir.constant(4 : index) : i64
    %213 = llvm.mul %177, %212  : i64
    %214 = llvm.add %211, %213  : i64
    %215 = llvm.mlir.constant(2 : index) : i64
    %216 = llvm.mul %179, %215  : i64
    %217 = llvm.add %214, %216  : i64
    %218 = llvm.add %217, %181  : i64
    %219 = llvm.getelementptr %139[%218] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %220 = llvm.load %219 : !llvm.ptr -> f64
    %221 = llvm.fadd %220, %209  : f64
    %222 = llvm.mlir.constant(8 : index) : i64
    %223 = llvm.mul %175, %222  : i64
    %224 = llvm.mlir.constant(4 : index) : i64
    %225 = llvm.mul %177, %224  : i64
    %226 = llvm.add %223, %225  : i64
    %227 = llvm.mlir.constant(2 : index) : i64
    %228 = llvm.mul %179, %227  : i64
    %229 = llvm.add %226, %228  : i64
    %230 = llvm.add %229, %181  : i64
    %231 = llvm.getelementptr %139[%230] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %221, %231 : f64, !llvm.ptr
    %232 = llvm.add %185, %1  : i64
    llvm.br ^bb32(%232 : i64)
  ^bb34:  // pred: ^bb32
    %233 = llvm.add %183, %1  : i64
    llvm.br ^bb31(%233 : i64)
  ^bb35:  // pred: ^bb31
    %234 = llvm.add %181, %1  : i64
    llvm.br ^bb30(%234 : i64)
  ^bb36:  // pred: ^bb30
    %235 = llvm.add %179, %1  : i64
    llvm.br ^bb29(%235 : i64)
  ^bb37:  // pred: ^bb29
    %236 = llvm.add %177, %1  : i64
    llvm.br ^bb28(%236 : i64)
  ^bb38:  // pred: ^bb28
    %237 = llvm.add %175, %1  : i64
    llvm.br ^bb27(%237 : i64)
  ^bb39:  // pred: ^bb27
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.alloca %238 x !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %152, %239 : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>, !llvm.ptr
    %240 = llvm.mlir.constant(4 : index) : i64
    %241 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %242 = llvm.insertvalue %240, %241[0] : !llvm.struct<(i64, ptr)> 
    %243 = llvm.insertvalue %239, %242[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%240, %239) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_i64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
