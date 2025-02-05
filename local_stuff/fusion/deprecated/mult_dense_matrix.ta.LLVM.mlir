module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
    %2 = llvm.mlir.constant(8 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(2 : i64) : i64
    %6 = llvm.mlir.constant(4 : i64) : i64
    %7 = llvm.mlir.constant(8 : i64) : i64
    %8 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %9 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %10 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %11 = llvm.mlir.constant(8 : index) : i64
    %12 = llvm.mlir.constant(4 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(32 : index) : i64
    %15 = llvm.mlir.zero : !llvm.ptr
    %16 = llvm.getelementptr %15[32] : (!llvm.ptr) -> !llvm.ptr, f64
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
    %28 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %29 = llvm.insertvalue %20, %28[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.insertvalue %11, %32[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %12, %33[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.insertvalue %12, %34[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %13, %35[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%37: i64):  // 2 preds: ^bb0, ^bb4
    %38 = llvm.icmp "slt" %37, %2 : i64
    llvm.cond_br %38, ^bb2(%4 : i64), ^bb5
  ^bb2(%39: i64):  // 2 preds: ^bb1, ^bb3
    %40 = llvm.icmp "slt" %39, %1 : i64
    llvm.cond_br %40, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.mul %37, %41  : i64
    %43 = llvm.add %42, %39  : i64
    %44 = llvm.getelementptr %27[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %44 : f64, !llvm.ptr
    %45 = llvm.add %39, %3  : i64
    llvm.br ^bb2(%45 : i64)
  ^bb4:  // pred: ^bb2
    %46 = llvm.add %37, %3  : i64
    llvm.br ^bb1(%46 : i64)
  ^bb5:  // pred: ^bb1
    %47 = llvm.mlir.constant(4 : index) : i64
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(8 : index) : i64
    %51 = llvm.mlir.zero : !llvm.ptr
    %52 = llvm.getelementptr %51[8] : (!llvm.ptr) -> !llvm.ptr, f64
    %53 = llvm.ptrtoint %52 : !llvm.ptr to i64
    %54 = llvm.mlir.constant(32 : index) : i64
    %55 = llvm.add %53, %54  : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr
    %57 = llvm.ptrtoint %56 : !llvm.ptr to i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.sub %54, %58  : i64
    %60 = llvm.add %57, %59  : i64
    %61 = llvm.urem %60, %54  : i64
    %62 = llvm.sub %60, %61  : i64
    %63 = llvm.inttoptr %62 : i64 to !llvm.ptr
    %64 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %65 = llvm.insertvalue %56, %64[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.insertvalue %47, %68[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.insertvalue %48, %69[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.insertvalue %48, %70[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.insertvalue %49, %71[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb6(%4 : i64)
  ^bb6(%73: i64):  // 2 preds: ^bb5, ^bb9
    %74 = llvm.icmp "slt" %73, %1 : i64
    llvm.cond_br %74, ^bb7(%4 : i64), ^bb10
  ^bb7(%75: i64):  // 2 preds: ^bb6, ^bb8
    %76 = llvm.icmp "slt" %75, %0 : i64
    llvm.cond_br %76, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %77 = llvm.mlir.constant(2 : index) : i64
    %78 = llvm.mul %73, %77  : i64
    %79 = llvm.add %78, %75  : i64
    %80 = llvm.getelementptr %63[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %80 : f64, !llvm.ptr
    %81 = llvm.add %75, %3  : i64
    llvm.br ^bb7(%81 : i64)
  ^bb9:  // pred: ^bb7
    %82 = llvm.add %73, %3  : i64
    llvm.br ^bb6(%82 : i64)
  ^bb10:  // pred: ^bb6
    %83 = llvm.mlir.constant(8 : index) : i64
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(16 : index) : i64
    %87 = llvm.mlir.zero : !llvm.ptr
    %88 = llvm.getelementptr %87[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %89 = llvm.ptrtoint %88 : !llvm.ptr to i64
    %90 = llvm.mlir.constant(32 : index) : i64
    %91 = llvm.add %89, %90  : i64
    %92 = llvm.call @malloc(%91) : (i64) -> !llvm.ptr
    %93 = llvm.ptrtoint %92 : !llvm.ptr to i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.sub %90, %94  : i64
    %96 = llvm.add %93, %95  : i64
    %97 = llvm.urem %96, %90  : i64
    %98 = llvm.sub %96, %97  : i64
    %99 = llvm.inttoptr %98 : i64 to !llvm.ptr
    %100 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %101 = llvm.insertvalue %92, %100[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.insertvalue %99, %101[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.insertvalue %103, %102[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.insertvalue %83, %104[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.insertvalue %84, %105[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.insertvalue %84, %106[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.insertvalue %85, %107[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb11(%4 : i64)
  ^bb11(%109: i64):  // 2 preds: ^bb10, ^bb14
    %110 = llvm.icmp "slt" %109, %2 : i64
    llvm.cond_br %110, ^bb12(%4 : i64), ^bb15(%4 : i64)
  ^bb12(%111: i64):  // 2 preds: ^bb11, ^bb13
    %112 = llvm.icmp "slt" %111, %0 : i64
    llvm.cond_br %112, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mul %109, %113  : i64
    %115 = llvm.add %114, %111  : i64
    %116 = llvm.getelementptr %99[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %116 : f64, !llvm.ptr
    %117 = llvm.add %111, %3  : i64
    llvm.br ^bb12(%117 : i64)
  ^bb14:  // pred: ^bb12
    %118 = llvm.add %109, %3  : i64
    llvm.br ^bb11(%118 : i64)
  ^bb15(%119: i64):  // 2 preds: ^bb11, ^bb20
    %120 = llvm.icmp "slt" %119, %7 : i64
    llvm.cond_br %120, ^bb16(%4 : i64), ^bb21
  ^bb16(%121: i64):  // 2 preds: ^bb15, ^bb19
    %122 = llvm.icmp "slt" %121, %6 : i64
    llvm.cond_br %122, ^bb17(%4 : i64), ^bb20
  ^bb17(%123: i64):  // 2 preds: ^bb16, ^bb18
    %124 = llvm.icmp "slt" %123, %5 : i64
    llvm.cond_br %124, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %125 = llvm.mlir.constant(4 : index) : i64
    %126 = llvm.mul %119, %125  : i64
    %127 = llvm.add %126, %121  : i64
    %128 = llvm.getelementptr %27[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %129 = llvm.load %128 : !llvm.ptr -> f64
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.mul %121, %130  : i64
    %132 = llvm.add %131, %123  : i64
    %133 = llvm.getelementptr %63[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %134 = llvm.load %133 : !llvm.ptr -> f64
    %135 = llvm.fmul %129, %134  : f64
    %136 = llvm.mlir.constant(2 : index) : i64
    %137 = llvm.mul %119, %136  : i64
    %138 = llvm.add %137, %123  : i64
    %139 = llvm.getelementptr %99[%138] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %140 = llvm.load %139 : !llvm.ptr -> f64
    %141 = llvm.fadd %140, %135  : f64
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mul %119, %142  : i64
    %144 = llvm.add %143, %123  : i64
    %145 = llvm.getelementptr %99[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %141, %145 : f64, !llvm.ptr
    %146 = llvm.add %123, %3  : i64
    llvm.br ^bb17(%146 : i64)
  ^bb19:  // pred: ^bb17
    %147 = llvm.add %121, %3  : i64
    llvm.br ^bb16(%147 : i64)
  ^bb20:  // pred: ^bb16
    %148 = llvm.add %119, %3  : i64
    llvm.br ^bb15(%148 : i64)
  ^bb21:  // pred: ^bb15
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.alloca %149 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %108, %150 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %151 = llvm.mlir.constant(2 : index) : i64
    %152 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %153 = llvm.insertvalue %151, %152[0] : !llvm.struct<(i64, ptr)> 
    %154 = llvm.insertvalue %150, %153[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%151, %150) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
