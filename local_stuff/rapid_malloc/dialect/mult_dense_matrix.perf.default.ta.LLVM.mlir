module {
  llvm.func @malloc(i64) -> !llvm.ptr
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
    %16 = llvm.call @malloc(%15) : (i64) -> !llvm.ptr
    %17 = llvm.ptrtoint %16 : !llvm.ptr to i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.sub %14, %18  : i64
    %20 = llvm.add %17, %19  : i64
    %21 = llvm.urem %20, %14  : i64
    %22 = llvm.sub %20, %21  : i64
    %23 = llvm.inttoptr %22 : i64 to !llvm.ptr
    %24 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %25 = llvm.insertvalue %16, %24[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %23, %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.insertvalue %27, %26[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %7, %28[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %8, %29[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %8, %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.insertvalue %9, %31[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%3 : i64)
  ^bb1(%33: i64):  // 2 preds: ^bb0, ^bb4
    %34 = llvm.icmp "slt" %33, %0 : i64
    llvm.cond_br %34, ^bb2(%3 : i64), ^bb5
  ^bb2(%35: i64):  // 2 preds: ^bb1, ^bb3
    %36 = llvm.icmp "slt" %35, %0 : i64
    llvm.cond_br %36, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %37 = llvm.mlir.constant(4086 : index) : i64
    %38 = llvm.mul %33, %37  : i64
    %39 = llvm.add %38, %35  : i64
    %40 = llvm.getelementptr %23[%39] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %40 : f64, !llvm.ptr
    %41 = llvm.add %35, %2  : i64
    llvm.br ^bb2(%41 : i64)
  ^bb4:  // pred: ^bb2
    %42 = llvm.add %33, %2  : i64
    llvm.br ^bb1(%42 : i64)
  ^bb5:  // pred: ^bb1
    %43 = llvm.mlir.constant(4086 : index) : i64
    %44 = llvm.mlir.constant(4086 : index) : i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.constant(16695396 : index) : i64
    %47 = llvm.mlir.zero : !llvm.ptr
    %48 = llvm.getelementptr %47[16695396] : (!llvm.ptr) -> !llvm.ptr, f64
    %49 = llvm.ptrtoint %48 : !llvm.ptr to i64
    %50 = llvm.mlir.constant(32 : index) : i64
    %51 = llvm.add %49, %50  : i64
    %52 = llvm.call @malloc(%51) : (i64) -> !llvm.ptr
    %53 = llvm.ptrtoint %52 : !llvm.ptr to i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.sub %50, %54  : i64
    %56 = llvm.add %53, %55  : i64
    %57 = llvm.urem %56, %50  : i64
    %58 = llvm.sub %56, %57  : i64
    %59 = llvm.inttoptr %58 : i64 to !llvm.ptr
    %60 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %61 = llvm.insertvalue %52, %60[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.insertvalue %59, %61[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.insertvalue %63, %62[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.insertvalue %43, %64[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.insertvalue %44, %65[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.insertvalue %44, %66[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.insertvalue %45, %67[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb6(%3 : i64)
  ^bb6(%69: i64):  // 2 preds: ^bb5, ^bb9
    %70 = llvm.icmp "slt" %69, %0 : i64
    llvm.cond_br %70, ^bb7(%3 : i64), ^bb10
  ^bb7(%71: i64):  // 2 preds: ^bb6, ^bb8
    %72 = llvm.icmp "slt" %71, %0 : i64
    llvm.cond_br %72, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %73 = llvm.mlir.constant(4086 : index) : i64
    %74 = llvm.mul %69, %73  : i64
    %75 = llvm.add %74, %71  : i64
    %76 = llvm.getelementptr %59[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %76 : f64, !llvm.ptr
    %77 = llvm.add %71, %2  : i64
    llvm.br ^bb7(%77 : i64)
  ^bb9:  // pred: ^bb7
    %78 = llvm.add %69, %2  : i64
    llvm.br ^bb6(%78 : i64)
  ^bb10:  // pred: ^bb6
    %79 = llvm.mlir.constant(4086 : index) : i64
    %80 = llvm.mlir.constant(4086 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(16695396 : index) : i64
    %83 = llvm.mlir.zero : !llvm.ptr
    %84 = llvm.getelementptr %83[16695396] : (!llvm.ptr) -> !llvm.ptr, f64
    %85 = llvm.ptrtoint %84 : !llvm.ptr to i64
    %86 = llvm.mlir.constant(32 : index) : i64
    %87 = llvm.add %85, %86  : i64
    %88 = llvm.call @malloc(%87) : (i64) -> !llvm.ptr
    %89 = llvm.ptrtoint %88 : !llvm.ptr to i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.sub %86, %90  : i64
    %92 = llvm.add %89, %91  : i64
    %93 = llvm.urem %92, %86  : i64
    %94 = llvm.sub %92, %93  : i64
    %95 = llvm.inttoptr %94 : i64 to !llvm.ptr
    %96 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %97 = llvm.insertvalue %88, %96[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %98 = llvm.insertvalue %95, %97[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.insertvalue %99, %98[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %101 = llvm.insertvalue %79, %100[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.insertvalue %80, %101[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.insertvalue %80, %102[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.insertvalue %81, %103[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb11(%3 : i64)
  ^bb11(%105: i64):  // 2 preds: ^bb10, ^bb14
    %106 = llvm.icmp "slt" %105, %0 : i64
    llvm.cond_br %106, ^bb12(%3 : i64), ^bb15
  ^bb12(%107: i64):  // 2 preds: ^bb11, ^bb13
    %108 = llvm.icmp "slt" %107, %0 : i64
    llvm.cond_br %108, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %109 = llvm.mlir.constant(4086 : index) : i64
    %110 = llvm.mul %105, %109  : i64
    %111 = llvm.add %110, %107  : i64
    %112 = llvm.getelementptr %95[%111] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %112 : f64, !llvm.ptr
    %113 = llvm.add %107, %2  : i64
    llvm.br ^bb12(%113 : i64)
  ^bb14:  // pred: ^bb12
    %114 = llvm.add %105, %2  : i64
    llvm.br ^bb11(%114 : i64)
  ^bb15:  // pred: ^bb11
    %115 = llvm.call @getTime() : () -> f64
    llvm.br ^bb16(%3 : i64)
  ^bb16(%116: i64):  // 2 preds: ^bb15, ^bb21
    %117 = llvm.icmp "slt" %116, %1 : i64
    llvm.cond_br %117, ^bb17(%3 : i64), ^bb22
  ^bb17(%118: i64):  // 2 preds: ^bb16, ^bb20
    %119 = llvm.icmp "slt" %118, %1 : i64
    llvm.cond_br %119, ^bb18(%3 : i64), ^bb21
  ^bb18(%120: i64):  // 2 preds: ^bb17, ^bb19
    %121 = llvm.icmp "slt" %120, %1 : i64
    llvm.cond_br %121, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %122 = llvm.mlir.constant(4086 : index) : i64
    %123 = llvm.mul %116, %122  : i64
    %124 = llvm.add %123, %118  : i64
    %125 = llvm.getelementptr %23[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %126 = llvm.load %125 : !llvm.ptr -> f64
    %127 = llvm.mlir.constant(4086 : index) : i64
    %128 = llvm.mul %118, %127  : i64
    %129 = llvm.add %128, %120  : i64
    %130 = llvm.getelementptr %59[%129] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %131 = llvm.load %130 : !llvm.ptr -> f64
    %132 = llvm.fmul %126, %131  : f64
    %133 = llvm.mlir.constant(4086 : index) : i64
    %134 = llvm.mul %116, %133  : i64
    %135 = llvm.add %134, %120  : i64
    %136 = llvm.getelementptr %95[%135] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %137 = llvm.load %136 : !llvm.ptr -> f64
    %138 = llvm.fadd %137, %132  : f64
    %139 = llvm.mlir.constant(4086 : index) : i64
    %140 = llvm.mul %116, %139  : i64
    %141 = llvm.add %140, %120  : i64
    %142 = llvm.getelementptr %95[%141] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %138, %142 : f64, !llvm.ptr
    %143 = llvm.add %120, %2  : i64
    llvm.br ^bb18(%143 : i64)
  ^bb20:  // pred: ^bb18
    %144 = llvm.add %118, %2  : i64
    llvm.br ^bb17(%144 : i64)
  ^bb21:  // pred: ^bb17
    %145 = llvm.add %116, %2  : i64
    llvm.br ^bb16(%145 : i64)
  ^bb22:  // pred: ^bb16
    %146 = llvm.call @getTime() : () -> f64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.zero : !llvm.ptr
    %150 = llvm.getelementptr %149[1] : (!llvm.ptr) -> !llvm.ptr, f64
    %151 = llvm.ptrtoint %150 : !llvm.ptr to i64
    %152 = llvm.call @malloc(%151) : (i64) -> !llvm.ptr
    %153 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %154 = llvm.insertvalue %152, %153[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.insertvalue %152, %154[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.insertvalue %156, %155[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.insertvalue %147, %157[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.insertvalue %148, %158[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %4, %152 : f64, !llvm.ptr
    llvm.br ^bb23(%3 : i64)
  ^bb23(%160: i64):  // 2 preds: ^bb22, ^bb26
    %161 = llvm.icmp "slt" %160, %0 : i64
    llvm.cond_br %161, ^bb24(%3 : i64), ^bb27
  ^bb24(%162: i64):  // 2 preds: ^bb23, ^bb25
    %163 = llvm.icmp "slt" %162, %0 : i64
    llvm.cond_br %163, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %164 = llvm.mlir.constant(4086 : index) : i64
    %165 = llvm.mul %160, %164  : i64
    %166 = llvm.add %165, %162  : i64
    %167 = llvm.getelementptr %95[%166] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %168 = llvm.load %167 : !llvm.ptr -> f64
    %169 = llvm.load %152 : !llvm.ptr -> f64
    %170 = llvm.fadd %168, %169  : f64
    llvm.store %170, %152 : f64, !llvm.ptr
    %171 = llvm.add %162, %2  : i64
    llvm.br ^bb24(%171 : i64)
  ^bb26:  // pred: ^bb24
    %172 = llvm.add %160, %2  : i64
    llvm.br ^bb23(%172 : i64)
  ^bb27:  // pred: ^bb23
    %173 = llvm.load %152 : !llvm.ptr -> f64
    llvm.call @printF64(%173) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%115, %146) : (f64, f64) -> ()
    llvm.return
  }
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func @printElapsedTime(f64, f64) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}
