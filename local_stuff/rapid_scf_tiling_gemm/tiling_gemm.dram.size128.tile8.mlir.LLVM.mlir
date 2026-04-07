module {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @pp_index(%arg0: i64) {
    llvm.call @printI64(%arg0) : (i64) -> ()
    llvm.call @printComma() : () -> ()
    llvm.return
  }
  llvm.func @main() {
    %0 = llvm.mlir.constant(8 : index) : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %4 = llvm.mlir.constant(1.100000e+00 : f64) : f64
    %5 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %6 = llvm.mlir.constant(512 : index) : i64
    %7 = llvm.mlir.constant(512 : index) : i64
    %8 = llvm.mlir.constant(512 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(262144 : index) : i64
    %11 = llvm.mlir.zero : !llvm.ptr
    %12 = llvm.getelementptr %11[262144] : (!llvm.ptr) -> !llvm.ptr, f64
    %13 = llvm.ptrtoint %12 : !llvm.ptr to i64
    %14 = llvm.call @malloc(%13) : (i64) -> !llvm.ptr
    %15 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %16 = llvm.insertvalue %14, %15[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.insertvalue %18, %17[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %7, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %8, %20[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %8, %21[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %9, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.constant(512 : index) : i64
    %25 = llvm.mlir.constant(512 : index) : i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.mlir.constant(262144 : index) : i64
    %28 = llvm.mlir.zero : !llvm.ptr
    %29 = llvm.getelementptr %28[262144] : (!llvm.ptr) -> !llvm.ptr, f64
    %30 = llvm.ptrtoint %29 : !llvm.ptr to i64
    %31 = llvm.call @malloc(%30) : (i64) -> !llvm.ptr
    %32 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %33 = llvm.insertvalue %31, %32[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.insertvalue %24, %36[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %25, %37[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.insertvalue %25, %38[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.insertvalue %26, %39[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.mlir.constant(512 : index) : i64
    %42 = llvm.mlir.constant(512 : index) : i64
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.mlir.constant(262144 : index) : i64
    %45 = llvm.mlir.zero : !llvm.ptr
    %46 = llvm.getelementptr %45[262144] : (!llvm.ptr) -> !llvm.ptr, f64
    %47 = llvm.ptrtoint %46 : !llvm.ptr to i64
    %48 = llvm.call @malloc(%47) : (i64) -> !llvm.ptr
    %49 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %50 = llvm.insertvalue %48, %49[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.insertvalue %41, %53[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.insertvalue %42, %54[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.insertvalue %42, %55[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.insertvalue %43, %56[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%1 : i64)
  ^bb1(%58: i64):  // 2 preds: ^bb0, ^bb5
    %59 = llvm.icmp "slt" %58, %6 : i64
    llvm.cond_br %59, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%1 : i64)
  ^bb3(%60: i64):  // 2 preds: ^bb2, ^bb4
    %61 = llvm.icmp "slt" %60, %6 : i64
    llvm.cond_br %61, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %62 = llvm.mlir.constant(512 : index) : i64
    %63 = llvm.mul %58, %62 : i64
    %64 = llvm.add %63, %60 : i64
    %65 = llvm.getelementptr %14[%64] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %65 : f64, !llvm.ptr
    %66 = llvm.add %60, %2 : i64
    llvm.br ^bb3(%66 : i64)
  ^bb5:  // pred: ^bb3
    %67 = llvm.add %58, %2 : i64
    llvm.br ^bb1(%67 : i64)
  ^bb6:  // pred: ^bb1
    llvm.br ^bb7(%1 : i64)
  ^bb7(%68: i64):  // 2 preds: ^bb6, ^bb11
    %69 = llvm.icmp "slt" %68, %6 : i64
    llvm.cond_br %69, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%1 : i64)
  ^bb9(%70: i64):  // 2 preds: ^bb8, ^bb10
    %71 = llvm.icmp "slt" %70, %6 : i64
    llvm.cond_br %71, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %72 = llvm.mlir.constant(512 : index) : i64
    %73 = llvm.mul %68, %72 : i64
    %74 = llvm.add %73, %70 : i64
    %75 = llvm.getelementptr %31[%74] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %75 : f64, !llvm.ptr
    %76 = llvm.add %70, %2 : i64
    llvm.br ^bb9(%76 : i64)
  ^bb11:  // pred: ^bb9
    %77 = llvm.add %68, %2 : i64
    llvm.br ^bb7(%77 : i64)
  ^bb12:  // pred: ^bb7
    llvm.br ^bb13(%1 : i64)
  ^bb13(%78: i64):  // 2 preds: ^bb12, ^bb17
    %79 = llvm.icmp "slt" %78, %6 : i64
    llvm.cond_br %79, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%1 : i64)
  ^bb15(%80: i64):  // 2 preds: ^bb14, ^bb16
    %81 = llvm.icmp "slt" %80, %6 : i64
    llvm.cond_br %81, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %82 = llvm.mlir.constant(512 : index) : i64
    %83 = llvm.mul %78, %82 : i64
    %84 = llvm.add %83, %80 : i64
    %85 = llvm.getelementptr %48[%84] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %85 : f64, !llvm.ptr
    %86 = llvm.add %80, %2 : i64
    llvm.br ^bb15(%86 : i64)
  ^bb17:  // pred: ^bb15
    %87 = llvm.add %78, %2 : i64
    llvm.br ^bb13(%87 : i64)
  ^bb18:  // pred: ^bb13
    %88 = llvm.call @getTime() : () -> f64
    llvm.br ^bb19(%1 : i64)
  ^bb19(%89: i64):  // 2 preds: ^bb18, ^bb35
    %90 = llvm.icmp "slt" %89, %6 : i64
    llvm.cond_br %90, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %91 = llvm.add %89, %0 : i64
    %92 = llvm.intr.umin(%91, %6)  : (i64, i64) -> i64
    llvm.br ^bb21(%1 : i64)
  ^bb21(%93: i64):  // 2 preds: ^bb20, ^bb34
    %94 = llvm.icmp "slt" %93, %6 : i64
    llvm.cond_br %94, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %95 = llvm.add %93, %0 : i64
    %96 = llvm.intr.umin(%95, %6)  : (i64, i64) -> i64
    llvm.br ^bb23(%1 : i64)
  ^bb23(%97: i64):  // 2 preds: ^bb22, ^bb33
    %98 = llvm.icmp "slt" %97, %6 : i64
    llvm.cond_br %98, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %99 = llvm.add %97, %0 : i64
    %100 = llvm.intr.umin(%99, %6)  : (i64, i64) -> i64
    llvm.br ^bb25(%89 : i64)
  ^bb25(%101: i64):  // 2 preds: ^bb24, ^bb32
    %102 = llvm.icmp "slt" %101, %92 : i64
    llvm.cond_br %102, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%93 : i64)
  ^bb27(%103: i64):  // 2 preds: ^bb26, ^bb31
    %104 = llvm.icmp "slt" %103, %96 : i64
    llvm.cond_br %104, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %105 = llvm.mlir.constant(512 : index) : i64
    %106 = llvm.mul %101, %105 : i64
    %107 = llvm.add %106, %103 : i64
    %108 = llvm.getelementptr %14[%107] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %109 = llvm.load %108 : !llvm.ptr -> f64
    llvm.br ^bb29(%97 : i64)
  ^bb29(%110: i64):  // 2 preds: ^bb28, ^bb30
    %111 = llvm.icmp "slt" %110, %100 : i64
    llvm.cond_br %111, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %112 = llvm.mlir.constant(512 : index) : i64
    %113 = llvm.mul %103, %112 : i64
    %114 = llvm.add %113, %110 : i64
    %115 = llvm.getelementptr %31[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %116 = llvm.load %115 : !llvm.ptr -> f64
    %117 = llvm.fmul %109, %116  : f64
    %118 = llvm.mlir.constant(512 : index) : i64
    %119 = llvm.mul %101, %118 : i64
    %120 = llvm.add %119, %110 : i64
    %121 = llvm.getelementptr %48[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %122 = llvm.load %121 : !llvm.ptr -> f64
    %123 = llvm.fadd %122, %117  : f64
    %124 = llvm.mlir.constant(512 : index) : i64
    %125 = llvm.mul %101, %124 : i64
    %126 = llvm.add %125, %110 : i64
    %127 = llvm.getelementptr %48[%126] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %123, %127 : f64, !llvm.ptr
    %128 = llvm.add %110, %2 : i64
    llvm.br ^bb29(%128 : i64)
  ^bb31:  // pred: ^bb29
    %129 = llvm.add %103, %2 : i64
    llvm.br ^bb27(%129 : i64)
  ^bb32:  // pred: ^bb27
    %130 = llvm.add %101, %2 : i64
    llvm.br ^bb25(%130 : i64)
  ^bb33:  // pred: ^bb25
    %131 = llvm.add %97, %0 : i64
    llvm.br ^bb23(%131 : i64)
  ^bb34:  // pred: ^bb23
    %132 = llvm.add %93, %0 : i64
    llvm.br ^bb21(%132 : i64)
  ^bb35:  // pred: ^bb21
    %133 = llvm.add %89, %0 : i64
    llvm.br ^bb19(%133 : i64)
  ^bb36:  // pred: ^bb19
    %134 = llvm.call @getTime() : () -> f64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.mlir.zero : !llvm.ptr
    %138 = llvm.getelementptr %137[1] : (!llvm.ptr) -> !llvm.ptr, f64
    %139 = llvm.ptrtoint %138 : !llvm.ptr to i64
    %140 = llvm.call @malloc(%139) : (i64) -> !llvm.ptr
    %141 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %142 = llvm.insertvalue %140, %141[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %143 = llvm.insertvalue %140, %142[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %144 = llvm.mlir.constant(0 : index) : i64
    %145 = llvm.insertvalue %144, %143[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.insertvalue %135, %145[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %147 = llvm.insertvalue %136, %146[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.getelementptr %140[%1] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %148 : f64, !llvm.ptr
    llvm.br ^bb37(%1 : i64)
  ^bb37(%149: i64):  // 2 preds: ^bb36, ^bb41
    %150 = llvm.icmp "slt" %149, %6 : i64
    llvm.cond_br %150, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%1 : i64)
  ^bb39(%151: i64):  // 2 preds: ^bb38, ^bb40
    %152 = llvm.icmp "slt" %151, %6 : i64
    llvm.cond_br %152, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %153 = llvm.mlir.constant(512 : index) : i64
    %154 = llvm.mul %149, %153 : i64
    %155 = llvm.add %154, %151 : i64
    %156 = llvm.getelementptr %48[%155] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %157 = llvm.load %156 : !llvm.ptr -> f64
    %158 = llvm.getelementptr %140[%1] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %159 = llvm.load %158 : !llvm.ptr -> f64
    %160 = llvm.fadd %159, %157  : f64
    %161 = llvm.getelementptr %140[%1] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %160, %161 : f64, !llvm.ptr
    %162 = llvm.add %151, %2 : i64
    llvm.br ^bb39(%162 : i64)
  ^bb41:  // pred: ^bb39
    %163 = llvm.add %149, %2 : i64
    llvm.br ^bb37(%163 : i64)
  ^bb42:  // pred: ^bb37
    %164 = llvm.getelementptr %140[%1] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %165 = llvm.load %164 : !llvm.ptr -> f64
    llvm.call @printF64(%165) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%88, %134) : (f64, f64) -> ()
    llvm.call @free(%14) : (!llvm.ptr) -> ()
    llvm.call @free(%31) : (!llvm.ptr) -> ()
    llvm.call @free(%48) : (!llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_matrix_f64(i64, !llvm.ptr, i64, i64) attributes {sym_visibility = "private"}
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func @printElapsedTime(f64, f64) attributes {sym_visibility = "private"}
  llvm.func @printI64(i64) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printComma() attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
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
