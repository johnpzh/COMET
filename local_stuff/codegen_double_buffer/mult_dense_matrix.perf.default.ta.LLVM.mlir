module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(4 : index) : i64
    %1 = llvm.mlir.constant(2 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %7 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %8 = llvm.mlir.constant(2 : i64) : i64
    %9 = llvm.mlir.constant(4 : i64) : i64
    %10 = llvm.mlir.constant(8 : index) : i64
    %11 = llvm.mlir.constant(4 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(32 : index) : i64
    %14 = llvm.mlir.zero : !llvm.ptr
    %15 = llvm.getelementptr %14[32] : (!llvm.ptr) -> !llvm.ptr, f64
    %16 = llvm.ptrtoint %15 : !llvm.ptr to i64
    %17 = llvm.mlir.constant(32 : index) : i64
    %18 = llvm.add %16, %17 : i64
    %19 = llvm.call @malloc(%18) : (i64) -> !llvm.ptr
    %20 = llvm.ptrtoint %19 : !llvm.ptr to i64
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.sub %17, %21 : i64
    %23 = llvm.add %20, %22 : i64
    %24 = llvm.urem %23, %17  : i64
    %25 = llvm.sub %23, %24 : i64
    %26 = llvm.inttoptr %25 : i64 to !llvm.ptr
    %27 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %28 = llvm.insertvalue %19, %27[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.insertvalue %10, %31[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.insertvalue %11, %32[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %11, %33[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.insertvalue %12, %34[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%36: i64):  // 2 preds: ^bb0, ^bb5
    %37 = llvm.icmp "slt" %36, %2 : i64
    llvm.cond_br %37, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%38: i64):  // 2 preds: ^bb2, ^bb4
    %39 = llvm.icmp "slt" %38, %0 : i64
    llvm.cond_br %39, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %40 = llvm.mlir.constant(4 : index) : i64
    %41 = llvm.mul %36, %40 : i64
    %42 = llvm.add %41, %38 : i64
    %43 = llvm.getelementptr %26[%42] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %43 : f64, !llvm.ptr
    %44 = llvm.add %38, %3 : i64
    llvm.br ^bb3(%44 : i64)
  ^bb5:  // pred: ^bb3
    %45 = llvm.add %36, %3 : i64
    llvm.br ^bb1(%45 : i64)
  ^bb6:  // pred: ^bb1
    %46 = llvm.mlir.constant(4 : index) : i64
    %47 = llvm.mlir.constant(2 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(8 : index) : i64
    %50 = llvm.mlir.zero : !llvm.ptr
    %51 = llvm.getelementptr %50[8] : (!llvm.ptr) -> !llvm.ptr, f64
    %52 = llvm.ptrtoint %51 : !llvm.ptr to i64
    %53 = llvm.mlir.constant(32 : index) : i64
    %54 = llvm.add %52, %53 : i64
    %55 = llvm.call @malloc(%54) : (i64) -> !llvm.ptr
    %56 = llvm.ptrtoint %55 : !llvm.ptr to i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.sub %53, %57 : i64
    %59 = llvm.add %56, %58 : i64
    %60 = llvm.urem %59, %53  : i64
    %61 = llvm.sub %59, %60 : i64
    %62 = llvm.inttoptr %61 : i64 to !llvm.ptr
    %63 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %64 = llvm.insertvalue %55, %63[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.insertvalue %46, %67[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.insertvalue %47, %68[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.insertvalue %47, %69[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.insertvalue %48, %70[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%4 : i64)
  ^bb7(%72: i64):  // 2 preds: ^bb6, ^bb11
    %73 = llvm.icmp "slt" %72, %0 : i64
    llvm.cond_br %73, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%74: i64):  // 2 preds: ^bb8, ^bb10
    %75 = llvm.icmp "slt" %74, %1 : i64
    llvm.cond_br %75, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.mul %72, %76 : i64
    %78 = llvm.add %77, %74 : i64
    %79 = llvm.getelementptr %62[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %79 : f64, !llvm.ptr
    %80 = llvm.add %74, %3 : i64
    llvm.br ^bb9(%80 : i64)
  ^bb11:  // pred: ^bb9
    %81 = llvm.add %72, %3 : i64
    llvm.br ^bb7(%81 : i64)
  ^bb12:  // pred: ^bb7
    %82 = llvm.mlir.constant(8 : index) : i64
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(16 : index) : i64
    %86 = llvm.mlir.zero : !llvm.ptr
    %87 = llvm.getelementptr %86[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %88 = llvm.ptrtoint %87 : !llvm.ptr to i64
    %89 = llvm.mlir.constant(32 : index) : i64
    %90 = llvm.add %88, %89 : i64
    %91 = llvm.call @malloc(%90) : (i64) -> !llvm.ptr
    %92 = llvm.ptrtoint %91 : !llvm.ptr to i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.sub %89, %93 : i64
    %95 = llvm.add %92, %94 : i64
    %96 = llvm.urem %95, %89  : i64
    %97 = llvm.sub %95, %96 : i64
    %98 = llvm.inttoptr %97 : i64 to !llvm.ptr
    %99 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %100 = llvm.insertvalue %91, %99[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %101 = llvm.insertvalue %98, %100[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.insertvalue %102, %101[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.insertvalue %82, %103[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.insertvalue %83, %104[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.insertvalue %83, %105[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.insertvalue %84, %106[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%4 : i64)
  ^bb13(%108: i64):  // 2 preds: ^bb12, ^bb17
    %109 = llvm.icmp "slt" %108, %2 : i64
    llvm.cond_br %109, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%110: i64):  // 2 preds: ^bb14, ^bb16
    %111 = llvm.icmp "slt" %110, %1 : i64
    llvm.cond_br %111, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %112 = llvm.mlir.constant(2 : index) : i64
    %113 = llvm.mul %108, %112 : i64
    %114 = llvm.add %113, %110 : i64
    %115 = llvm.getelementptr %98[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %115 : f64, !llvm.ptr
    %116 = llvm.add %110, %3 : i64
    llvm.br ^bb15(%116 : i64)
  ^bb17:  // pred: ^bb15
    %117 = llvm.add %108, %3 : i64
    llvm.br ^bb13(%117 : i64)
  ^bb18:  // pred: ^bb13
    %118 = llvm.call @getTime() : () -> f64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : i64 = (%4) to (%2) step (%3) {
          llvm.br ^bb1(%4 : i64)
        ^bb1(%159: i64):  // 2 preds: ^bb0, ^bb5
          %160 = llvm.icmp "slt" %159, %9 : i64
          llvm.cond_br %160, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %161 = llvm.mlir.constant(4 : index) : i64
          %162 = llvm.mul %arg0, %161 : i64
          %163 = llvm.add %162, %159 : i64
          %164 = llvm.getelementptr %26[%163] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %165 = llvm.load %164 : !llvm.ptr -> f64
          llvm.br ^bb3(%4 : i64)
        ^bb3(%166: i64):  // 2 preds: ^bb2, ^bb4
          %167 = llvm.icmp "slt" %166, %8 : i64
          llvm.cond_br %167, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %168 = llvm.mlir.constant(2 : index) : i64
          %169 = llvm.mul %159, %168 : i64
          %170 = llvm.add %169, %166 : i64
          %171 = llvm.getelementptr %62[%170] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %172 = llvm.load %171 : !llvm.ptr -> f64
          %173 = llvm.fmul %165, %172  : f64
          %174 = llvm.mlir.constant(2 : index) : i64
          %175 = llvm.mul %arg0, %174 : i64
          %176 = llvm.add %175, %166 : i64
          %177 = llvm.getelementptr %98[%176] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %178 = llvm.load %177 : !llvm.ptr -> f64
          %179 = llvm.fadd %178, %173  : f64
          %180 = llvm.mlir.constant(2 : index) : i64
          %181 = llvm.mul %arg0, %180 : i64
          %182 = llvm.add %181, %166 : i64
          %183 = llvm.getelementptr %98[%182] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %179, %183 : f64, !llvm.ptr
          %184 = llvm.add %166, %3 : i64
          llvm.br ^bb3(%184 : i64)
        ^bb5:  // pred: ^bb3
          %185 = llvm.add %159, %3 : i64
          llvm.br ^bb1(%185 : i64)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %119 = llvm.call @getTime() : () -> f64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.zero : !llvm.ptr
    %123 = llvm.getelementptr %122[1] : (!llvm.ptr) -> !llvm.ptr, f64
    %124 = llvm.ptrtoint %123 : !llvm.ptr to i64
    %125 = llvm.call @malloc(%124) : (i64) -> !llvm.ptr
    %126 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %127 = llvm.insertvalue %125, %126[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.insertvalue %125, %127[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.insertvalue %129, %128[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.insertvalue %120, %130[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.insertvalue %121, %131[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.getelementptr %125[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %133 : f64, !llvm.ptr
    llvm.br ^bb19(%4 : i64)
  ^bb19(%134: i64):  // 2 preds: ^bb18, ^bb23
    %135 = llvm.icmp "slt" %134, %2 : i64
    llvm.cond_br %135, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%4 : i64)
  ^bb21(%136: i64):  // 2 preds: ^bb20, ^bb22
    %137 = llvm.icmp "slt" %136, %1 : i64
    llvm.cond_br %137, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mul %134, %138 : i64
    %140 = llvm.add %139, %136 : i64
    %141 = llvm.getelementptr %98[%140] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %142 = llvm.load %141 : !llvm.ptr -> f64
    %143 = llvm.getelementptr %125[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %144 = llvm.load %143 : !llvm.ptr -> f64
    %145 = llvm.fadd %142, %144  : f64
    %146 = llvm.getelementptr %125[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %145, %146 : f64, !llvm.ptr
    %147 = llvm.add %136, %3 : i64
    llvm.br ^bb21(%147 : i64)
  ^bb23:  // pred: ^bb21
    %148 = llvm.add %134, %3 : i64
    llvm.br ^bb19(%148 : i64)
  ^bb24:  // pred: ^bb19
    %149 = llvm.getelementptr %125[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %150 = llvm.load %149 : !llvm.ptr -> f64
    llvm.call @printF64(%150) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.alloca %151 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %107, %152 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %153 = llvm.mlir.constant(2 : index) : i64
    %154 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %155 = llvm.insertvalue %153, %154[0] : !llvm.struct<(i64, ptr)> 
    %156 = llvm.insertvalue %152, %155[1] : !llvm.struct<(i64, ptr)> 
    %157 = llvm.extractvalue %156[0] : !llvm.struct<(i64, ptr)> 
    %158 = llvm.extractvalue %156[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%157, %158) : (i64, !llvm.ptr) -> ()
    llvm.call @printElapsedTime(%118, %119) : (f64, f64) -> ()
    llvm.return
  }
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func @printElapsedTime(f64, f64) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
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
}
