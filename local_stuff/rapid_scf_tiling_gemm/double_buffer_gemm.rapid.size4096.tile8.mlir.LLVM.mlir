module {
  llvm.func @abort()
  llvm.func @puts(!llvm.ptr)
  llvm.mlir.global private constant @assert_msg(dense<[65, 119, 97, 105, 116, 101, 100, 32, 97, 115, 121, 110, 99, 32, 111, 112, 101, 114, 97, 110, 100, 32, 105, 115, 32, 105, 110, 32, 101, 114, 114, 111, 114, 32, 115, 116, 97, 116, 101, 0]> : tensor<40xi8>) {addr_space = 0 : i32} : !llvm.array<40 x i8>
  llvm.func @aligned_alloc(i64, i64) -> !llvm.ptr
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @rapid_malloc(!llvm.ptr, i64) -> !llvm.ptr
  llvm.func @rapid_initialize() -> !llvm.ptr
  llvm.func @pp_index(%arg0: i64) {
    llvm.call @printI64(%arg0) : (i64) -> ()
    llvm.call @printComma() : () -> ()
    llvm.return
  }
  llvm.func @main() {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.mlir.constant(4096 : i64) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(1.100000e+00 : f64) : f64
    %7 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %8 = llvm.mlir.constant(0 : i8) : i8
    %9 = llvm.mlir.constant(4096 : index) : i64
    %10 = llvm.mlir.constant(4096 : index) : i64
    %11 = llvm.mlir.constant(4096 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(16777216 : index) : i64
    %14 = llvm.mlir.zero : !llvm.ptr
    %15 = llvm.getelementptr %14[16777216] : (!llvm.ptr) -> !llvm.ptr, f64
    %16 = llvm.ptrtoint %15 : !llvm.ptr to i64
    %17 = llvm.call @rapid_initialize() : () -> !llvm.ptr
    %18 = llvm.call @rapid_malloc(%17, %16) : (!llvm.ptr, i64) -> !llvm.ptr
    %19 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %10, %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %11, %24[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %11, %25[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %12, %26[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.mlir.constant(4096 : index) : i64
    %29 = llvm.mlir.constant(4096 : index) : i64
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.mlir.constant(16777216 : index) : i64
    %32 = llvm.mlir.zero : !llvm.ptr
    %33 = llvm.getelementptr %32[16777216] : (!llvm.ptr) -> !llvm.ptr, f64
    %34 = llvm.ptrtoint %33 : !llvm.ptr to i64
    %35 = llvm.call @rapid_malloc(%17, %34) : (!llvm.ptr, i64) -> !llvm.ptr
    %36 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.insertvalue %28, %40[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.insertvalue %29, %41[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.insertvalue %29, %42[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.insertvalue %30, %43[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.mlir.constant(4096 : index) : i64
    %46 = llvm.mlir.constant(4096 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(16777216 : index) : i64
    %49 = llvm.mlir.zero : !llvm.ptr
    %50 = llvm.getelementptr %49[16777216] : (!llvm.ptr) -> !llvm.ptr, f64
    %51 = llvm.ptrtoint %50 : !llvm.ptr to i64
    %52 = llvm.call @rapid_malloc(%17, %51) : (!llvm.ptr, i64) -> !llvm.ptr
    %53 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %54 = llvm.insertvalue %52, %53[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.insertvalue %45, %57[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.insertvalue %46, %58[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.insertvalue %46, %59[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.insertvalue %47, %60[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%3 : i64)
  ^bb1(%62: i64):  // 2 preds: ^bb0, ^bb5
    %63 = llvm.icmp "slt" %62, %9 : i64
    llvm.cond_br %63, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%3 : i64)
  ^bb3(%64: i64):  // 2 preds: ^bb2, ^bb4
    %65 = llvm.icmp "slt" %64, %9 : i64
    llvm.cond_br %65, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %66 = llvm.mlir.constant(4096 : index) : i64
    %67 = llvm.mul %62, %66 : i64
    %68 = llvm.add %67, %64 : i64
    %69 = llvm.getelementptr %18[%68] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %69 : f64, !llvm.ptr
    %70 = llvm.add %64, %4 : i64
    llvm.br ^bb3(%70 : i64)
  ^bb5:  // pred: ^bb3
    %71 = llvm.add %62, %4 : i64
    llvm.br ^bb1(%71 : i64)
  ^bb6:  // pred: ^bb1
    llvm.br ^bb7(%3 : i64)
  ^bb7(%72: i64):  // 2 preds: ^bb6, ^bb11
    %73 = llvm.icmp "slt" %72, %9 : i64
    llvm.cond_br %73, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%3 : i64)
  ^bb9(%74: i64):  // 2 preds: ^bb8, ^bb10
    %75 = llvm.icmp "slt" %74, %9 : i64
    llvm.cond_br %75, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %76 = llvm.mlir.constant(4096 : index) : i64
    %77 = llvm.mul %72, %76 : i64
    %78 = llvm.add %77, %74 : i64
    %79 = llvm.getelementptr %35[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %79 : f64, !llvm.ptr
    %80 = llvm.add %74, %4 : i64
    llvm.br ^bb9(%80 : i64)
  ^bb11:  // pred: ^bb9
    %81 = llvm.add %72, %4 : i64
    llvm.br ^bb7(%81 : i64)
  ^bb12:  // pred: ^bb7
    llvm.br ^bb13(%3 : i64)
  ^bb13(%82: i64):  // 2 preds: ^bb12, ^bb17
    %83 = llvm.icmp "slt" %82, %9 : i64
    llvm.cond_br %83, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%3 : i64)
  ^bb15(%84: i64):  // 2 preds: ^bb14, ^bb16
    %85 = llvm.icmp "slt" %84, %9 : i64
    llvm.cond_br %85, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %86 = llvm.mlir.constant(4096 : index) : i64
    %87 = llvm.mul %82, %86 : i64
    %88 = llvm.add %87, %84 : i64
    %89 = llvm.getelementptr %52[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %89 : f64, !llvm.ptr
    %90 = llvm.add %84, %4 : i64
    llvm.br ^bb15(%90 : i64)
  ^bb17:  // pred: ^bb15
    %91 = llvm.add %82, %4 : i64
    llvm.br ^bb13(%91 : i64)
  ^bb18:  // pred: ^bb13
    %92 = llvm.call @getTime() : () -> f64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.zero : !llvm.ptr
    %96 = llvm.getelementptr %95[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i64, ptr)>
    %97 = llvm.ptrtoint %96 : !llvm.ptr to i64
    %98 = llvm.mlir.zero : !llvm.ptr
    %99 = llvm.getelementptr %98[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i64, ptr)>
    %100 = llvm.ptrtoint %99 : !llvm.ptr to i64
    %101 = llvm.add %97, %100 : i64
    %102 = llvm.call @malloc(%101) : (i64) -> !llvm.ptr
    %103 = llvm.ptrtoint %102 : !llvm.ptr to i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.sub %100, %104 : i64
    %106 = llvm.add %103, %105 : i64
    %107 = llvm.urem %106, %100  : i64
    %108 = llvm.sub %106, %107 : i64
    %109 = llvm.inttoptr %108 : i64 to !llvm.ptr
    %110 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %111 = llvm.insertvalue %102, %110[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.insertvalue %109, %111[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.insertvalue %113, %112[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.insertvalue %93, %114[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %116 = llvm.insertvalue %94, %115[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.mlir.constant(64 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.zero : !llvm.ptr
    %120 = llvm.getelementptr %119[64] : (!llvm.ptr) -> !llvm.ptr, f64
    %121 = llvm.ptrtoint %120 : !llvm.ptr to i64
    %122 = llvm.call @malloc(%121) : (i64) -> !llvm.ptr
    %123 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %124 = llvm.insertvalue %122, %123[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %125 = llvm.insertvalue %122, %124[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %126 = llvm.mlir.constant(0 : index) : i64
    %127 = llvm.insertvalue %126, %125[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.insertvalue %117, %127[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.insertvalue %118, %128[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.alloca %130 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %129, %131 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %134 = llvm.insertvalue %132, %133[0] : !llvm.struct<(i64, ptr)> 
    %135 = llvm.insertvalue %131, %134[1] : !llvm.struct<(i64, ptr)> 
    %136 = llvm.getelementptr %109[%3] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(i64, ptr)>
    llvm.store %135, %136 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.zero : !llvm.ptr
    %140 = llvm.getelementptr %139[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i64, ptr)>
    %141 = llvm.ptrtoint %140 : !llvm.ptr to i64
    %142 = llvm.mlir.zero : !llvm.ptr
    %143 = llvm.getelementptr %142[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i64, ptr)>
    %144 = llvm.ptrtoint %143 : !llvm.ptr to i64
    %145 = llvm.add %141, %144 : i64
    %146 = llvm.call @malloc(%145) : (i64) -> !llvm.ptr
    %147 = llvm.ptrtoint %146 : !llvm.ptr to i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.sub %144, %148 : i64
    %150 = llvm.add %147, %149 : i64
    %151 = llvm.urem %150, %144  : i64
    %152 = llvm.sub %150, %151 : i64
    %153 = llvm.inttoptr %152 : i64 to !llvm.ptr
    %154 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %155 = llvm.insertvalue %146, %154[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.insertvalue %153, %155[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.insertvalue %157, %156[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.insertvalue %137, %158[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.insertvalue %138, %159[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.mlir.constant(64 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.zero : !llvm.ptr
    %164 = llvm.getelementptr %163[64] : (!llvm.ptr) -> !llvm.ptr, f64
    %165 = llvm.ptrtoint %164 : !llvm.ptr to i64
    %166 = llvm.call @malloc(%165) : (i64) -> !llvm.ptr
    %167 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %168 = llvm.insertvalue %166, %167[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.insertvalue %166, %168[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.insertvalue %170, %169[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %172 = llvm.insertvalue %161, %171[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.insertvalue %162, %172[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.alloca %174 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %173, %175 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %178 = llvm.insertvalue %176, %177[0] : !llvm.struct<(i64, ptr)> 
    %179 = llvm.insertvalue %175, %178[1] : !llvm.struct<(i64, ptr)> 
    %180 = llvm.getelementptr %153[%3] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(i64, ptr)>
    llvm.store %179, %180 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.zero : !llvm.ptr
    %184 = llvm.getelementptr %183[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i64, ptr)>
    %185 = llvm.ptrtoint %184 : !llvm.ptr to i64
    %186 = llvm.mlir.zero : !llvm.ptr
    %187 = llvm.getelementptr %186[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i64, ptr)>
    %188 = llvm.ptrtoint %187 : !llvm.ptr to i64
    %189 = llvm.add %185, %188 : i64
    %190 = llvm.call @malloc(%189) : (i64) -> !llvm.ptr
    %191 = llvm.ptrtoint %190 : !llvm.ptr to i64
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.sub %188, %192 : i64
    %194 = llvm.add %191, %193 : i64
    %195 = llvm.urem %194, %188  : i64
    %196 = llvm.sub %194, %195 : i64
    %197 = llvm.inttoptr %196 : i64 to !llvm.ptr
    %198 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %199 = llvm.insertvalue %190, %198[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.insertvalue %197, %199[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.insertvalue %201, %200[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.insertvalue %181, %202[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.insertvalue %182, %203[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %205 = llvm.mlir.constant(64 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.zero : !llvm.ptr
    %208 = llvm.getelementptr %207[64] : (!llvm.ptr) -> !llvm.ptr, f64
    %209 = llvm.ptrtoint %208 : !llvm.ptr to i64
    %210 = llvm.call @malloc(%209) : (i64) -> !llvm.ptr
    %211 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %212 = llvm.insertvalue %210, %211[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.insertvalue %210, %212[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.insertvalue %214, %213[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.insertvalue %205, %215[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.insertvalue %206, %216[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.alloca %218 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %217, %219 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %222 = llvm.insertvalue %220, %221[0] : !llvm.struct<(i64, ptr)> 
    %223 = llvm.insertvalue %219, %222[1] : !llvm.struct<(i64, ptr)> 
    %224 = llvm.getelementptr %197[%3] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(i64, ptr)>
    llvm.store %223, %224 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.zero : !llvm.ptr
    %228 = llvm.getelementptr %227[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i64, ptr)>
    %229 = llvm.ptrtoint %228 : !llvm.ptr to i64
    %230 = llvm.mlir.zero : !llvm.ptr
    %231 = llvm.getelementptr %230[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i64, ptr)>
    %232 = llvm.ptrtoint %231 : !llvm.ptr to i64
    %233 = llvm.add %229, %232 : i64
    %234 = llvm.call @malloc(%233) : (i64) -> !llvm.ptr
    %235 = llvm.ptrtoint %234 : !llvm.ptr to i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.sub %232, %236 : i64
    %238 = llvm.add %235, %237 : i64
    %239 = llvm.urem %238, %232  : i64
    %240 = llvm.sub %238, %239 : i64
    %241 = llvm.inttoptr %240 : i64 to !llvm.ptr
    %242 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %243 = llvm.insertvalue %234, %242[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.insertvalue %241, %243[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.mlir.constant(0 : index) : i64
    %246 = llvm.insertvalue %245, %244[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %247 = llvm.insertvalue %225, %246[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.insertvalue %226, %247[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.mlir.constant(64 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.zero : !llvm.ptr
    %252 = llvm.getelementptr %251[64] : (!llvm.ptr) -> !llvm.ptr, f64
    %253 = llvm.ptrtoint %252 : !llvm.ptr to i64
    %254 = llvm.call @malloc(%253) : (i64) -> !llvm.ptr
    %255 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %256 = llvm.insertvalue %254, %255[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.insertvalue %254, %256[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.insertvalue %258, %257[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.insertvalue %249, %259[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.insertvalue %250, %260[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.alloca %262 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %261, %263 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %266 = llvm.insertvalue %264, %265[0] : !llvm.struct<(i64, ptr)> 
    %267 = llvm.insertvalue %263, %266[1] : !llvm.struct<(i64, ptr)> 
    %268 = llvm.getelementptr %241[%3] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(i64, ptr)>
    llvm.store %267, %268 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.zero : !llvm.ptr
    %272 = llvm.getelementptr %271[1] : (!llvm.ptr) -> !llvm.ptr, i8
    %273 = llvm.ptrtoint %272 : !llvm.ptr to i64
    %274 = llvm.call @malloc(%273) : (i64) -> !llvm.ptr
    %275 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %276 = llvm.insertvalue %274, %275[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %277 = llvm.insertvalue %274, %276[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.insertvalue %278, %277[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %280 = llvm.insertvalue %269, %279[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %281 = llvm.insertvalue %270, %280[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.getelementptr %274[%3] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %8, %282 : i8, !llvm.ptr
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.zero : !llvm.ptr
    %286 = llvm.getelementptr %285[1] : (!llvm.ptr) -> !llvm.ptr, i8
    %287 = llvm.ptrtoint %286 : !llvm.ptr to i64
    %288 = llvm.call @malloc(%287) : (i64) -> !llvm.ptr
    %289 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %290 = llvm.insertvalue %288, %289[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.insertvalue %288, %290[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.insertvalue %292, %291[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.insertvalue %283, %293[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %295 = llvm.insertvalue %284, %294[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.getelementptr %288[%3] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %8, %296 : i8, !llvm.ptr
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.alloca %297 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %27, %298 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %299 = llvm.mlir.constant(2 : index) : i64
    %300 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %301 = llvm.insertvalue %299, %300[0] : !llvm.struct<(i64, ptr)> 
    %302 = llvm.insertvalue %298, %301[1] : !llvm.struct<(i64, ptr)> 
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.alloca %303 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %116, %304 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %307 = llvm.insertvalue %305, %306[0] : !llvm.struct<(i64, ptr)> 
    %308 = llvm.insertvalue %304, %307[1] : !llvm.struct<(i64, ptr)> 
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.alloca %309 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %160, %310 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %313 = llvm.insertvalue %311, %312[0] : !llvm.struct<(i64, ptr)> 
    %314 = llvm.insertvalue %310, %313[1] : !llvm.struct<(i64, ptr)> 
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.alloca %315 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %281, %316 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %319 = llvm.insertvalue %317, %318[0] : !llvm.struct<(i64, ptr)> 
    %320 = llvm.insertvalue %316, %319[1] : !llvm.struct<(i64, ptr)> 
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.alloca %321 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %44, %322 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %323 = llvm.mlir.constant(2 : index) : i64
    %324 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %325 = llvm.insertvalue %323, %324[0] : !llvm.struct<(i64, ptr)> 
    %326 = llvm.insertvalue %322, %325[1] : !llvm.struct<(i64, ptr)> 
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.alloca %327 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %204, %328 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %331 = llvm.insertvalue %329, %330[0] : !llvm.struct<(i64, ptr)> 
    %332 = llvm.insertvalue %328, %331[1] : !llvm.struct<(i64, ptr)> 
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.alloca %333 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %248, %334 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %337 = llvm.insertvalue %335, %336[0] : !llvm.struct<(i64, ptr)> 
    %338 = llvm.insertvalue %334, %337[1] : !llvm.struct<(i64, ptr)> 
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.alloca %339 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %295, %340 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %343 = llvm.insertvalue %341, %342[0] : !llvm.struct<(i64, ptr)> 
    %344 = llvm.insertvalue %340, %343[1] : !llvm.struct<(i64, ptr)> 
    %345 = llvm.extractvalue %302[0] : !llvm.struct<(i64, ptr)> 
    %346 = llvm.extractvalue %302[1] : !llvm.struct<(i64, ptr)> 
    %347 = llvm.extractvalue %308[0] : !llvm.struct<(i64, ptr)> 
    %348 = llvm.extractvalue %308[1] : !llvm.struct<(i64, ptr)> 
    %349 = llvm.extractvalue %314[0] : !llvm.struct<(i64, ptr)> 
    %350 = llvm.extractvalue %314[1] : !llvm.struct<(i64, ptr)> 
    %351 = llvm.extractvalue %320[0] : !llvm.struct<(i64, ptr)> 
    %352 = llvm.extractvalue %320[1] : !llvm.struct<(i64, ptr)> 
    %353 = llvm.extractvalue %326[0] : !llvm.struct<(i64, ptr)> 
    %354 = llvm.extractvalue %326[1] : !llvm.struct<(i64, ptr)> 
    %355 = llvm.extractvalue %332[0] : !llvm.struct<(i64, ptr)> 
    %356 = llvm.extractvalue %332[1] : !llvm.struct<(i64, ptr)> 
    %357 = llvm.extractvalue %338[0] : !llvm.struct<(i64, ptr)> 
    %358 = llvm.extractvalue %338[1] : !llvm.struct<(i64, ptr)> 
    %359 = llvm.extractvalue %344[0] : !llvm.struct<(i64, ptr)> 
    %360 = llvm.extractvalue %344[1] : !llvm.struct<(i64, ptr)> 
    %361 = llvm.call @async_execute_fn(%345, %346, %347, %348, %349, %350, %351, %352, %353, %354, %355, %356, %357, %358, %359, %360) : (i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr) -> !llvm.ptr
    llvm.br ^bb19(%3 : i64)
  ^bb19(%362: i64):  // 2 preds: ^bb18, ^bb41
    %363 = llvm.icmp "slt" %362, %9 : i64
    llvm.cond_br %363, ^bb20, ^bb42
  ^bb20:  // pred: ^bb19
    %364 = llvm.sub %9, %362 : i64
    %365 = llvm.intr.smin(%364, %2)  : (i64, i64) -> i64
    llvm.br ^bb21(%3 : i64)
  ^bb21(%366: i64):  // 2 preds: ^bb20, ^bb40
    %367 = llvm.icmp "slt" %366, %9 : i64
    llvm.cond_br %367, ^bb22, ^bb41
  ^bb22:  // pred: ^bb21
    %368 = llvm.sub %9, %366 : i64
    %369 = llvm.intr.smin(%368, %2)  : (i64, i64) -> i64
    %370 = llvm.getelementptr %274[%3] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    %371 = llvm.load %370 : !llvm.ptr -> i8
    llvm.br ^bb23(%371 : i8)
  ^bb23(%372: i8):  // 2 preds: ^bb22, ^bb24
    %373 = llvm.icmp "eq" %372, %8 : i8
    llvm.cond_br %373, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %374 = llvm.extractvalue %320[0] : !llvm.struct<(i64, ptr)> 
    %375 = llvm.extractvalue %320[1] : !llvm.struct<(i64, ptr)> 
    %376 = llvm.call @comet_atomic_load_n_i8(%374, %375) : (i64, !llvm.ptr) -> i8
    llvm.br ^bb23(%376 : i8)
  ^bb25:  // pred: ^bb23
    llvm.br ^bb26(%3 : i64)
  ^bb26(%377: i64):  // 2 preds: ^bb25, ^bb39
    %378 = llvm.icmp "slt" %377, %9 : i64
    llvm.cond_br %378, ^bb27, ^bb40
  ^bb27:  // pred: ^bb26
    %379 = llvm.sub %9, %377 : i64
    %380 = llvm.intr.smin(%379, %2)  : (i64, i64) -> i64
    %381 = llvm.getelementptr %288[%3] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    %382 = llvm.load %381 : !llvm.ptr -> i8
    llvm.br ^bb28(%382 : i8)
  ^bb28(%383: i8):  // 2 preds: ^bb27, ^bb29
    %384 = llvm.icmp "eq" %383, %8 : i8
    llvm.cond_br %384, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %385 = llvm.extractvalue %344[0] : !llvm.struct<(i64, ptr)> 
    %386 = llvm.extractvalue %344[1] : !llvm.struct<(i64, ptr)> 
    %387 = llvm.call @comet_atomic_load_n_i8(%385, %386) : (i64, !llvm.ptr) -> i8
    llvm.br ^bb28(%387 : i8)
  ^bb30:  // pred: ^bb28
    %388 = llvm.getelementptr %109[%3] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(i64, ptr)>
    %389 = llvm.load %388 : !llvm.ptr -> !llvm.struct<(i64, ptr)>
    %390 = llvm.extractvalue %389[1] : !llvm.struct<(i64, ptr)> 
    %391 = llvm.load %390 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %392 = llvm.getelementptr %197[%3] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(i64, ptr)>
    %393 = llvm.load %392 : !llvm.ptr -> !llvm.struct<(i64, ptr)>
    %394 = llvm.extractvalue %393[1] : !llvm.struct<(i64, ptr)> 
    %395 = llvm.load %394 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    llvm.br ^bb31(%3 : i64)
  ^bb31(%396: i64):  // 2 preds: ^bb30, ^bb38
    %397 = llvm.icmp "slt" %396, %365 : i64
    llvm.cond_br %397, ^bb32, ^bb39
  ^bb32:  // pred: ^bb31
    %398 = llvm.add %362, %396 : i64
    %399 = llvm.mul %396, %2 : i64
    llvm.br ^bb33(%3 : i64)
  ^bb33(%400: i64):  // 2 preds: ^bb32, ^bb37
    %401 = llvm.icmp "slt" %400, %369 : i64
    llvm.cond_br %401, ^bb34, ^bb38
  ^bb34:  // pred: ^bb33
    %402 = llvm.add %399, %400 : i64
    %403 = llvm.extractvalue %391[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %404 = llvm.getelementptr %403[%402] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %405 = llvm.load %404 : !llvm.ptr -> f64
    %406 = llvm.mul %400, %2 : i64
    llvm.br ^bb35(%3 : i64)
  ^bb35(%407: i64):  // 2 preds: ^bb34, ^bb36
    %408 = llvm.icmp "slt" %407, %380 : i64
    llvm.cond_br %408, ^bb36, ^bb37
  ^bb36:  // pred: ^bb35
    %409 = llvm.add %406, %407 : i64
    %410 = llvm.extractvalue %395[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %411 = llvm.getelementptr %410[%409] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %412 = llvm.load %411 : !llvm.ptr -> f64
    %413 = llvm.fmul %405, %412  : f64
    %414 = llvm.add %377, %407 : i64
    %415 = llvm.mlir.constant(4096 : index) : i64
    %416 = llvm.mul %398, %415 : i64
    %417 = llvm.add %416, %414 : i64
    %418 = llvm.getelementptr %52[%417] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %419 = llvm.load %418 : !llvm.ptr -> f64
    %420 = llvm.fadd %419, %413  : f64
    %421 = llvm.mlir.constant(4096 : index) : i64
    %422 = llvm.mul %398, %421 : i64
    %423 = llvm.add %422, %414 : i64
    %424 = llvm.getelementptr %52[%423] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %420, %424 : f64, !llvm.ptr
    %425 = llvm.add %407, %4 : i64
    llvm.br ^bb35(%425 : i64)
  ^bb37:  // pred: ^bb35
    %426 = llvm.add %400, %4 : i64
    llvm.br ^bb33(%426 : i64)
  ^bb38:  // pred: ^bb33
    %427 = llvm.add %396, %4 : i64
    llvm.br ^bb31(%427 : i64)
  ^bb39:  // pred: ^bb31
    %428 = llvm.extractvalue %344[0] : !llvm.struct<(i64, ptr)> 
    %429 = llvm.extractvalue %344[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_atomic_store_n_i8(%428, %429, %8) : (i64, !llvm.ptr, i8) -> ()
    %430 = llvm.add %377, %2 : i64
    llvm.br ^bb26(%430 : i64)
  ^bb40:  // pred: ^bb26
    %431 = llvm.extractvalue %320[0] : !llvm.struct<(i64, ptr)> 
    %432 = llvm.extractvalue %320[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_atomic_store_n_i8(%431, %432, %8) : (i64, !llvm.ptr, i8) -> ()
    %433 = llvm.add %366, %2 : i64
    llvm.br ^bb21(%433 : i64)
  ^bb41:  // pred: ^bb21
    %434 = llvm.add %362, %2 : i64
    llvm.br ^bb19(%434 : i64)
  ^bb42:  // pred: ^bb19
    llvm.call @mlirAsyncRuntimeAwaitToken(%361) : (!llvm.ptr) -> ()
    %435 = llvm.call @mlirAsyncRuntimeIsTokenError(%361) : (!llvm.ptr) -> i1
    %436 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @mlirAsyncRuntimeDropRef(%361, %436) : (!llvm.ptr, i64) -> ()
    %437 = llvm.mlir.constant(true) : i1
    %438 = llvm.xor %435, %437  : i1
    llvm.cond_br %438, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %439 = llvm.call @getTime() : () -> f64
    %440 = llvm.mlir.constant(1 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.zero : !llvm.ptr
    %443 = llvm.getelementptr %442[1] : (!llvm.ptr) -> !llvm.ptr, f64
    %444 = llvm.ptrtoint %443 : !llvm.ptr to i64
    %445 = llvm.call @malloc(%444) : (i64) -> !llvm.ptr
    %446 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %447 = llvm.insertvalue %445, %446[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %448 = llvm.insertvalue %445, %447[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.insertvalue %449, %448[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %451 = llvm.insertvalue %440, %450[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %452 = llvm.insertvalue %441, %451[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %453 = llvm.getelementptr %445[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %453 : f64, !llvm.ptr
    llvm.br ^bb44(%3 : i64)
  ^bb44(%454: i64):  // 2 preds: ^bb43, ^bb48
    %455 = llvm.icmp "slt" %454, %9 : i64
    llvm.cond_br %455, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    llvm.br ^bb46(%3 : i64)
  ^bb46(%456: i64):  // 2 preds: ^bb45, ^bb47
    %457 = llvm.icmp "slt" %456, %9 : i64
    llvm.cond_br %457, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %458 = llvm.mlir.constant(4096 : index) : i64
    %459 = llvm.mul %454, %458 : i64
    %460 = llvm.add %459, %456 : i64
    %461 = llvm.getelementptr %52[%460] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %462 = llvm.load %461 : !llvm.ptr -> f64
    %463 = llvm.getelementptr %445[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %464 = llvm.load %463 : !llvm.ptr -> f64
    %465 = llvm.fadd %464, %462  : f64
    %466 = llvm.getelementptr %445[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %465, %466 : f64, !llvm.ptr
    %467 = llvm.add %456, %4 : i64
    llvm.br ^bb46(%467 : i64)
  ^bb48:  // pred: ^bb46
    %468 = llvm.add %454, %4 : i64
    llvm.br ^bb44(%468 : i64)
  ^bb49:  // pred: ^bb44
    %469 = llvm.getelementptr %445[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %470 = llvm.load %469 : !llvm.ptr -> f64
    llvm.call @printF64(%470) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%92, %439) : (f64, f64) -> ()
    llvm.call @free(%122) : (!llvm.ptr) -> ()
    llvm.call @free(%102) : (!llvm.ptr) -> ()
    llvm.call @free(%166) : (!llvm.ptr) -> ()
    llvm.call @free(%146) : (!llvm.ptr) -> ()
    llvm.call @free(%210) : (!llvm.ptr) -> ()
    llvm.call @free(%190) : (!llvm.ptr) -> ()
    llvm.call @free(%254) : (!llvm.ptr) -> ()
    llvm.call @free(%234) : (!llvm.ptr) -> ()
    llvm.call @free(%274) : (!llvm.ptr) -> ()
    llvm.call @free(%288) : (!llvm.ptr) -> ()
    llvm.return
  ^bb50:  // pred: ^bb42
    %471 = llvm.mlir.addressof @assert_msg : !llvm.ptr
    %472 = llvm.getelementptr %471[0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<40 x i8>
    llvm.call @puts(%472) : (!llvm.ptr) -> ()
    llvm.call @abort() : () -> ()
    llvm.unreachable
  }
  llvm.func @comet_print_memref_to_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @comet_print_matrix_f64(i64, !llvm.ptr, i64, i64) attributes {sym_visibility = "private"}
  llvm.func @comet_atomic_load_n_i8(i64, !llvm.ptr) -> i8 attributes {sym_visibility = "private"}
  llvm.func @comet_atomic_store_n_i8(i64, !llvm.ptr, i8) attributes {sym_visibility = "private"}
  llvm.func @comet_swap_buffers(i64, !llvm.ptr, i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @comet_initialize_double_buffer_thread(i64, !llvm.ptr, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, i64, i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func @printElapsedTime(f64, f64) attributes {sym_visibility = "private"}
  llvm.func @printI64(i64) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printComma() attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
  llvm.func @async_execute_fn(%arg0: i64, %arg1: !llvm.ptr, %arg2: i64, %arg3: !llvm.ptr, %arg4: i64, %arg5: !llvm.ptr, %arg6: i64, %arg7: !llvm.ptr, %arg8: i64, %arg9: !llvm.ptr, %arg10: i64, %arg11: !llvm.ptr, %arg12: i64, %arg13: !llvm.ptr, %arg14: i64, %arg15: !llvm.ptr) -> !llvm.ptr attributes {passthrough = ["presplitcoroutine"], sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1 = llvm.insertvalue %arg14, %0[0] : !llvm.struct<(i64, ptr)> 
    %2 = llvm.insertvalue %arg15, %1[1] : !llvm.struct<(i64, ptr)> 
    %3 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %4 = llvm.insertvalue %arg12, %3[0] : !llvm.struct<(i64, ptr)> 
    %5 = llvm.insertvalue %arg13, %4[1] : !llvm.struct<(i64, ptr)> 
    %6 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %7 = llvm.insertvalue %arg10, %6[0] : !llvm.struct<(i64, ptr)> 
    %8 = llvm.insertvalue %arg11, %7[1] : !llvm.struct<(i64, ptr)> 
    %9 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %10 = llvm.insertvalue %arg8, %9[0] : !llvm.struct<(i64, ptr)> 
    %11 = llvm.insertvalue %arg9, %10[1] : !llvm.struct<(i64, ptr)> 
    %12 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %13 = llvm.insertvalue %arg6, %12[0] : !llvm.struct<(i64, ptr)> 
    %14 = llvm.insertvalue %arg7, %13[1] : !llvm.struct<(i64, ptr)> 
    %15 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %16 = llvm.insertvalue %arg4, %15[0] : !llvm.struct<(i64, ptr)> 
    %17 = llvm.insertvalue %arg5, %16[1] : !llvm.struct<(i64, ptr)> 
    %18 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %19 = llvm.insertvalue %arg2, %18[0] : !llvm.struct<(i64, ptr)> 
    %20 = llvm.insertvalue %arg3, %19[1] : !llvm.struct<(i64, ptr)> 
    %21 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %22 = llvm.insertvalue %arg0, %21[0] : !llvm.struct<(i64, ptr)> 
    %23 = llvm.insertvalue %arg1, %22[1] : !llvm.struct<(i64, ptr)> 
    %24 = llvm.call @mlirAsyncRuntimeCreateToken() : () -> !llvm.ptr
    %25 = llvm.mlir.constant(0 : i32) : i32
    %26 = llvm.mlir.zero : !llvm.ptr
    %27 = llvm.intr.coro.id %25, %26, %26, %26 : (i32, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> !llvm.token
    %28 = llvm.intr.coro.size : i64
    %29 = llvm.intr.coro.align : i64
    %30 = llvm.add %28, %29 : i64
    %31 = llvm.mlir.constant(1 : i64) : i64
    %32 = llvm.sub %30, %31 : i64
    %33 = llvm.mlir.constant(0 : i64) : i64
    %34 = llvm.sub %33, %29 : i64
    %35 = llvm.and %32, %34  : i64
    %36 = llvm.call @aligned_alloc(%29, %35) : (i64, i64) -> !llvm.ptr
    %37 = llvm.intr.coro.begin %27, %36 : (!llvm.token, !llvm.ptr) -> !llvm.ptr
    %38 = llvm.intr.coro.save %37 : (!llvm.ptr) -> !llvm.token
    %39 = llvm.mlir.addressof @__resume : !llvm.ptr
    llvm.call @mlirAsyncRuntimeExecute(%37, %39) : (!llvm.ptr, !llvm.ptr) -> ()
    %40 = llvm.mlir.constant(false) : i1
    %41 = llvm.intr.coro.suspend %38, %40 : i8
    %42 = llvm.sext %41 : i8 to i32
    llvm.switch %42 : i32, ^bb4 [
      0: ^bb1,
      1: ^bb3
    ]
  ^bb1:  // pred: ^bb0
    %43 = llvm.mlir.constant(4096 : i64) : i64
    %44 = llvm.mlir.constant(8 : i64) : i64
    %45 = llvm.extractvalue %23[0] : !llvm.struct<(i64, ptr)> 
    %46 = llvm.extractvalue %23[1] : !llvm.struct<(i64, ptr)> 
    %47 = llvm.extractvalue %20[0] : !llvm.struct<(i64, ptr)> 
    %48 = llvm.extractvalue %20[1] : !llvm.struct<(i64, ptr)> 
    %49 = llvm.extractvalue %17[0] : !llvm.struct<(i64, ptr)> 
    %50 = llvm.extractvalue %17[1] : !llvm.struct<(i64, ptr)> 
    %51 = llvm.extractvalue %14[0] : !llvm.struct<(i64, ptr)> 
    %52 = llvm.extractvalue %14[1] : !llvm.struct<(i64, ptr)> 
    %53 = llvm.extractvalue %11[0] : !llvm.struct<(i64, ptr)> 
    %54 = llvm.extractvalue %11[1] : !llvm.struct<(i64, ptr)> 
    %55 = llvm.extractvalue %8[0] : !llvm.struct<(i64, ptr)> 
    %56 = llvm.extractvalue %8[1] : !llvm.struct<(i64, ptr)> 
    %57 = llvm.extractvalue %5[0] : !llvm.struct<(i64, ptr)> 
    %58 = llvm.extractvalue %5[1] : !llvm.struct<(i64, ptr)> 
    %59 = llvm.extractvalue %2[0] : !llvm.struct<(i64, ptr)> 
    %60 = llvm.extractvalue %2[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_initialize_double_buffer_thread(%45, %46, %43, %43, %47, %48, %49, %50, %44, %44, %51, %52, %53, %54, %43, %43, %55, %56, %57, %58, %44, %44, %59, %60) : (i64, !llvm.ptr, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, i64, i64, !llvm.ptr) -> ()
    llvm.call @mlirAsyncRuntimeEmplaceToken(%24) : (!llvm.ptr) -> ()
    llvm.br ^bb2
  ^bb2:  // pred: ^bb1
    %61 = llvm.intr.coro.free %27, %37 : (!llvm.token, !llvm.ptr) -> !llvm.ptr
    llvm.call @free(%61) : (!llvm.ptr) -> ()
    llvm.br ^bb4
  ^bb3:  // pred: ^bb0
    %62 = llvm.intr.coro.free %27, %37 : (!llvm.token, !llvm.ptr) -> !llvm.ptr
    llvm.call @free(%62) : (!llvm.ptr) -> ()
    llvm.br ^bb4
  ^bb4:  // 3 preds: ^bb0, ^bb2, ^bb3
    %63 = llvm.mlir.constant(false) : i1
    %64 = llvm.mlir.none : !llvm.token
    %65 = llvm.intr.coro.end %37, %63, %64 : (!llvm.ptr, i1, !llvm.token) -> i1
    llvm.return %24 : !llvm.ptr
  }
  llvm.func @mlirAsyncRuntimeAddRef(!llvm.ptr, i64) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeDropRef(!llvm.ptr, i64) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeCreateToken() -> !llvm.ptr attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeCreateValue(i64) -> !llvm.ptr attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeCreateGroup(i64) -> !llvm.ptr attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeEmplaceToken(!llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeEmplaceValue(!llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeSetTokenError(!llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeSetValueError(!llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeIsTokenError(!llvm.ptr) -> i1 attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeIsValueError(!llvm.ptr) -> i1 attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeIsGroupError(!llvm.ptr) -> i1 attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeAwaitToken(!llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeAwaitValue(!llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeAwaitAllInGroup(!llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeExecute(!llvm.ptr, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeGetValueStorage(!llvm.ptr) -> !llvm.ptr attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeAddTokenToGroup(!llvm.ptr, !llvm.ptr) -> i64 attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeAwaitTokenAndExecute(!llvm.ptr, !llvm.ptr, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeAwaitValueAndExecute(!llvm.ptr, !llvm.ptr, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeAwaitAllInGroupAndExecute(!llvm.ptr, !llvm.ptr, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimGetNumWorkerThreads() -> i64 attributes {sym_visibility = "private"}
  llvm.func @__resume(%arg0: !llvm.ptr) attributes {sym_visibility = "private"} {
    llvm.intr.coro.resume %arg0 : !llvm.ptr
    llvm.return
  }
}
