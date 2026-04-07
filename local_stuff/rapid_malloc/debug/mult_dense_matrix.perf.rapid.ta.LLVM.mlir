module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @rapid_malloc(!llvm.ptr, i64) -> !llvm.ptr
  llvm.func @rapid_initialize() -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(4086 : index) : i64
    %1 = llvm.mlir.constant(4086 : i64) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %5 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %6 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %7 = llvm.mlir.constant(4086 : index) : i64
    %8 = llvm.mlir.constant(4086 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(16695396 : index) : i64
    %11 = llvm.mlir.zero : !llvm.ptr
    %12 = llvm.getelementptr %11[16695396] : (!llvm.ptr) -> !llvm.ptr, f64
    %13 = llvm.ptrtoint %12 : !llvm.ptr to i64
    %14 = llvm.mlir.constant(32 : index) : i64
    %15 = llvm.add %13, %14  : i64
    %16 = llvm.call @rapid_initialize() : () -> !llvm.ptr
    %17 = llvm.call @rapid_malloc(%16, %15) : (!llvm.ptr, i64) -> !llvm.ptr
    %18 = llvm.ptrtoint %17 : !llvm.ptr to i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.sub %14, %19  : i64
    %21 = llvm.add %18, %20  : i64
    %22 = llvm.urem %21, %14  : i64
    %23 = llvm.sub %21, %22  : i64
    %24 = llvm.inttoptr %23 : i64 to !llvm.ptr
    %25 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %26 = llvm.insertvalue %17, %25[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %7, %29[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %8, %30[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.insertvalue %8, %31[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.insertvalue %9, %32[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%3 : i64)
  ^bb1(%34: i64):  // 2 preds: ^bb0, ^bb4
    %35 = llvm.icmp "slt" %34, %0 : i64
    llvm.cond_br %35, ^bb2(%3 : i64), ^bb5
  ^bb2(%36: i64):  // 2 preds: ^bb1, ^bb3
    %37 = llvm.icmp "slt" %36, %0 : i64
    llvm.cond_br %37, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %38 = llvm.mlir.constant(4086 : index) : i64
    %39 = llvm.mul %34, %38  : i64
    %40 = llvm.add %39, %36  : i64
    %41 = llvm.getelementptr %24[%40] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %41 : f64, !llvm.ptr
    %42 = llvm.add %36, %2  : i64
    llvm.br ^bb2(%42 : i64)
  ^bb4:  // pred: ^bb2
    %43 = llvm.add %34, %2  : i64
    llvm.br ^bb1(%43 : i64)
  ^bb5:  // pred: ^bb1
    %44 = llvm.mlir.constant(4086 : index) : i64
    %45 = llvm.mlir.constant(4086 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(16695396 : index) : i64
    %48 = llvm.mlir.zero : !llvm.ptr
    %49 = llvm.getelementptr %48[16695396] : (!llvm.ptr) -> !llvm.ptr, f64
    %50 = llvm.ptrtoint %49 : !llvm.ptr to i64
    %51 = llvm.mlir.constant(32 : index) : i64
    %52 = llvm.add %50, %51  : i64
    %53 = llvm.call @rapid_malloc(%16, %52) : (!llvm.ptr, i64) -> !llvm.ptr
    %54 = llvm.ptrtoint %53 : !llvm.ptr to i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.sub %51, %55  : i64
    %57 = llvm.add %54, %56  : i64
    %58 = llvm.urem %57, %51  : i64
    %59 = llvm.sub %57, %58  : i64
    %60 = llvm.inttoptr %59 : i64 to !llvm.ptr
    %61 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %62 = llvm.insertvalue %53, %61[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.insertvalue %60, %62[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.insertvalue %44, %65[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.insertvalue %45, %66[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.insertvalue %45, %67[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.insertvalue %46, %68[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb6(%3 : i64)
  ^bb6(%70: i64):  // 2 preds: ^bb5, ^bb9
    %71 = llvm.icmp "slt" %70, %0 : i64
    llvm.cond_br %71, ^bb7(%3 : i64), ^bb10
  ^bb7(%72: i64):  // 2 preds: ^bb6, ^bb8
    %73 = llvm.icmp "slt" %72, %0 : i64
    llvm.cond_br %73, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %74 = llvm.mlir.constant(4086 : index) : i64
    %75 = llvm.mul %70, %74  : i64
    %76 = llvm.add %75, %72  : i64
    %77 = llvm.getelementptr %60[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %77 : f64, !llvm.ptr
    %78 = llvm.add %72, %2  : i64
    llvm.br ^bb7(%78 : i64)
  ^bb9:  // pred: ^bb7
    %79 = llvm.add %70, %2  : i64
    llvm.br ^bb6(%79 : i64)
  ^bb10:  // pred: ^bb6
    %80 = llvm.mlir.constant(4086 : index) : i64
    %81 = llvm.mlir.constant(4086 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(16695396 : index) : i64
    %84 = llvm.mlir.zero : !llvm.ptr
    %85 = llvm.getelementptr %84[16695396] : (!llvm.ptr) -> !llvm.ptr, f64
    %86 = llvm.ptrtoint %85 : !llvm.ptr to i64
    %87 = llvm.mlir.constant(32 : index) : i64
    %88 = llvm.add %86, %87  : i64
    %89 = llvm.call @rapid_malloc(%16, %88) : (!llvm.ptr, i64) -> !llvm.ptr
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
    llvm.br ^bb11(%3 : i64)
  ^bb11(%106: i64):  // 2 preds: ^bb10, ^bb14
    %107 = llvm.icmp "slt" %106, %0 : i64
    llvm.cond_br %107, ^bb12(%3 : i64), ^bb15
  ^bb12(%108: i64):  // 2 preds: ^bb11, ^bb13
    %109 = llvm.icmp "slt" %108, %0 : i64
    llvm.cond_br %109, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %110 = llvm.mlir.constant(4086 : index) : i64
    %111 = llvm.mul %106, %110  : i64
    %112 = llvm.add %111, %108  : i64
    %113 = llvm.getelementptr %96[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %113 : f64, !llvm.ptr
    %114 = llvm.add %108, %2  : i64
    llvm.br ^bb12(%114 : i64)
  ^bb14:  // pred: ^bb12
    %115 = llvm.add %106, %2  : i64
    llvm.br ^bb11(%115 : i64)
  ^bb15:  // pred: ^bb11
    %116 = llvm.call @getTime() : () -> f64
    llvm.br ^bb16(%3 : i64)
  ^bb16(%117: i64):  // 2 preds: ^bb15, ^bb21
    %118 = llvm.icmp "slt" %117, %1 : i64
    llvm.cond_br %118, ^bb17(%3 : i64), ^bb22
  ^bb17(%119: i64):  // 2 preds: ^bb16, ^bb20
    %120 = llvm.icmp "slt" %119, %1 : i64
    llvm.cond_br %120, ^bb18(%3 : i64), ^bb21
  ^bb18(%121: i64):  // 2 preds: ^bb17, ^bb19
    %122 = llvm.icmp "slt" %121, %1 : i64
    llvm.cond_br %122, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %123 = llvm.mlir.constant(4086 : index) : i64
    %124 = llvm.mul %117, %123  : i64
    %125 = llvm.add %124, %119  : i64
    %126 = llvm.getelementptr %24[%125] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %127 = llvm.load %126 : !llvm.ptr -> f64
    %128 = llvm.mlir.constant(4086 : index) : i64
    %129 = llvm.mul %119, %128  : i64
    %130 = llvm.add %129, %121  : i64
    %131 = llvm.getelementptr %60[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %132 = llvm.load %131 : !llvm.ptr -> f64
    %133 = llvm.fmul %127, %132  : f64
    %134 = llvm.mlir.constant(4086 : index) : i64
    %135 = llvm.mul %117, %134  : i64
    %136 = llvm.add %135, %121  : i64
    %137 = llvm.getelementptr %96[%136] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %138 = llvm.load %137 : !llvm.ptr -> f64
    %139 = llvm.fadd %138, %133  : f64
    %140 = llvm.mlir.constant(4086 : index) : i64
    %141 = llvm.mul %117, %140  : i64
    %142 = llvm.add %141, %121  : i64
    %143 = llvm.getelementptr %96[%142] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %139, %143 : f64, !llvm.ptr
    %144 = llvm.add %121, %2  : i64
    llvm.br ^bb18(%144 : i64)
  ^bb20:  // pred: ^bb18
    %145 = llvm.add %119, %2  : i64
    llvm.br ^bb17(%145 : i64)
  ^bb21:  // pred: ^bb17
    %146 = llvm.add %117, %2  : i64
    llvm.br ^bb16(%146 : i64)
  ^bb22:  // pred: ^bb16
    %147 = llvm.call @getTime() : () -> f64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.zero : !llvm.ptr
    %151 = llvm.getelementptr %150[1] : (!llvm.ptr) -> !llvm.ptr, f64
    %152 = llvm.ptrtoint %151 : !llvm.ptr to i64
    %153 = llvm.call @malloc(%152) : (i64) -> !llvm.ptr
    %154 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %155 = llvm.insertvalue %153, %154[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.insertvalue %153, %155[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.insertvalue %157, %156[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.insertvalue %148, %158[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.insertvalue %149, %159[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %4, %153 : f64, !llvm.ptr
    llvm.br ^bb23(%3 : i64)
  ^bb23(%161: i64):  // 2 preds: ^bb22, ^bb26
    %162 = llvm.icmp "slt" %161, %0 : i64
    llvm.cond_br %162, ^bb24(%3 : i64), ^bb27
  ^bb24(%163: i64):  // 2 preds: ^bb23, ^bb25
    %164 = llvm.icmp "slt" %163, %0 : i64
    llvm.cond_br %164, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %165 = llvm.mlir.constant(4086 : index) : i64
    %166 = llvm.mul %161, %165  : i64
    %167 = llvm.add %166, %163  : i64
    %168 = llvm.getelementptr %96[%167] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %169 = llvm.load %168 : !llvm.ptr -> f64
    %170 = llvm.load %153 : !llvm.ptr -> f64
    %171 = llvm.fadd %169, %170  : f64
    llvm.store %171, %153 : f64, !llvm.ptr
    %172 = llvm.add %163, %2  : i64
    llvm.br ^bb24(%172 : i64)
  ^bb26:  // pred: ^bb24
    %173 = llvm.add %161, %2  : i64
    llvm.br ^bb23(%173 : i64)
  ^bb27:  // pred: ^bb23
    %174 = llvm.load %153 : !llvm.ptr -> f64
    llvm.call @printF64(%174) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%116, %147) : (f64, f64) -> ()
    llvm.return
  }
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func @printElapsedTime(f64, f64) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}
