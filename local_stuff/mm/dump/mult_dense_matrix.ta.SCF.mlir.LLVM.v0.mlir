module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(32 : index) : i64
    %1 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %2 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %3 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(1 : index) : i64
    %6 = llvm.mlir.constant(8 : index) : i64
    %7 = llvm.mlir.constant(4 : index) : i64
    %8 = llvm.mlir.constant(2 : index) : i64
    %9 = llvm.mlir.zero : !llvm.ptr
    %10 = llvm.getelementptr %9[32] : (!llvm.ptr) -> !llvm.ptr, f64
    %11 = llvm.ptrtoint %10 : !llvm.ptr to i64
    %12 = llvm.add %11, %0  : i64
    %13 = llvm.call @malloc(%12) : (i64) -> !llvm.ptr
    %14 = llvm.ptrtoint %13 : !llvm.ptr to i64
    %15 = llvm.sub %0, %5  : i64
    %16 = llvm.add %14, %15  : i64
    %17 = llvm.urem %16, %0  : i64
    %18 = llvm.sub %16, %17  : i64
    %19 = llvm.inttoptr %18 : i64 to !llvm.ptr
    %20 = llvm.mlir.zero : !llvm.ptr
    %21 = llvm.getelementptr %20[8] : (!llvm.ptr) -> !llvm.ptr, f64
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.add %22, %0  : i64
    %24 = llvm.call @malloc(%23) : (i64) -> !llvm.ptr
    %25 = llvm.ptrtoint %24 : !llvm.ptr to i64
    %26 = llvm.sub %0, %5  : i64
    %27 = llvm.add %25, %26  : i64
    %28 = llvm.urem %27, %0  : i64
    %29 = llvm.sub %27, %28  : i64
    %30 = llvm.inttoptr %29 : i64 to !llvm.ptr
    %31 = llvm.mlir.zero : !llvm.ptr
    %32 = llvm.getelementptr %31[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %33 = llvm.ptrtoint %32 : !llvm.ptr to i64
    %34 = llvm.add %33, %0  : i64
    %35 = llvm.call @malloc(%34) : (i64) -> !llvm.ptr
    %36 = llvm.ptrtoint %35 : !llvm.ptr to i64
    %37 = llvm.sub %0, %5  : i64
    %38 = llvm.add %36, %37  : i64
    %39 = llvm.urem %38, %0  : i64
    %40 = llvm.sub %38, %39  : i64
    %41 = llvm.inttoptr %40 : i64 to !llvm.ptr
    llvm.br ^bb1(%4 : i64)
  ^bb1(%42: i64):  // 2 preds: ^bb0, ^bb5
    %43 = llvm.icmp "slt" %42, %6 : i64
    llvm.cond_br %43, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%44: i64):  // 2 preds: ^bb2, ^bb4
    %45 = llvm.icmp "slt" %44, %7 : i64
    llvm.cond_br %45, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %46 = llvm.mul %42, %7  : i64
    %47 = llvm.add %46, %44  : i64
    %48 = llvm.getelementptr %19[%47] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %48 : f64, !llvm.ptr
    %49 = llvm.add %44, %5  : i64
    llvm.br ^bb3(%49 : i64)
  ^bb5:  // pred: ^bb3
    %50 = llvm.add %42, %5  : i64
    llvm.br ^bb1(%50 : i64)
  ^bb6:  // pred: ^bb1
    llvm.br ^bb7(%4 : i64)
  ^bb7(%51: i64):  // 2 preds: ^bb6, ^bb11
    %52 = llvm.icmp "slt" %51, %7 : i64
    llvm.cond_br %52, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%53: i64):  // 2 preds: ^bb8, ^bb10
    %54 = llvm.icmp "slt" %53, %8 : i64
    llvm.cond_br %54, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %55 = llvm.mul %51, %8  : i64
    %56 = llvm.add %55, %53  : i64
    %57 = llvm.getelementptr %30[%56] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %57 : f64, !llvm.ptr
    %58 = llvm.add %53, %5  : i64
    llvm.br ^bb9(%58 : i64)
  ^bb11:  // pred: ^bb9
    %59 = llvm.add %51, %5  : i64
    llvm.br ^bb7(%59 : i64)
  ^bb12:  // pred: ^bb7
    llvm.br ^bb13(%4 : i64)
  ^bb13(%60: i64):  // 2 preds: ^bb12, ^bb17
    %61 = llvm.icmp "slt" %60, %6 : i64
    llvm.cond_br %61, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%62: i64):  // 2 preds: ^bb14, ^bb16
    %63 = llvm.icmp "slt" %62, %8 : i64
    llvm.cond_br %63, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %64 = llvm.mul %60, %8  : i64
    %65 = llvm.add %64, %62  : i64
    %66 = llvm.getelementptr %41[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %66 : f64, !llvm.ptr
    %67 = llvm.add %62, %5  : i64
    llvm.br ^bb15(%67 : i64)
  ^bb17:  // pred: ^bb15
    %68 = llvm.add %60, %5  : i64
    llvm.br ^bb13(%68 : i64)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop for  (%arg0) : i64 = (%4) to (%6) step (%5) {
        %69 = llvm.intr.stacksave : !llvm.ptr
        llvm.br ^bb1
      ^bb1:  // pred: ^bb0
        llvm.br ^bb2(%4 : i64)
      ^bb2(%70: i64):  // 2 preds: ^bb1, ^bb3
        %71 = llvm.icmp "slt" %70, %7 : i64
        llvm.cond_br %71, ^bb3, ^bb4
      ^bb3:  // pred: ^bb2
        omp.parallel {
          omp.wsloop for  (%arg1) : i64 = (%4) to (%8) step (%5) {
            %73 = llvm.intr.stacksave : !llvm.ptr
            llvm.br ^bb1
          ^bb1:  // pred: ^bb0
            %74 = llvm.mul %arg0, %7  : i64
            %75 = llvm.add %74, %70  : i64
            %76 = llvm.getelementptr %19[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f64
            %77 = llvm.load %76 : !llvm.ptr -> f64
            %78 = llvm.mul %70, %8  : i64
            %79 = llvm.add %78, %arg1  : i64
            %80 = llvm.getelementptr %30[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f64
            %81 = llvm.load %80 : !llvm.ptr -> f64
            %82 = llvm.mul %arg0, %8  : i64
            %83 = llvm.add %82, %arg1  : i64
            %84 = llvm.getelementptr %41[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f64
            %85 = llvm.load %84 : !llvm.ptr -> f64
            %86 = llvm.fmul %77, %81  : f64
            %87 = llvm.fadd %85, %86  : f64
            %88 = llvm.mul %arg0, %8  : i64
            %89 = llvm.add %88, %arg1  : i64
            %90 = llvm.getelementptr %41[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f64
            llvm.store %87, %90 : f64, !llvm.ptr
            llvm.intr.stackrestore %73 : !llvm.ptr
            llvm.br ^bb2
          ^bb2:  // pred: ^bb1
            omp.yield
          }
          omp.terminator
        }
        %72 = llvm.add %70, %5  : i64
        llvm.br ^bb2(%72 : i64)
      ^bb4:  // pred: ^bb2
        llvm.intr.stackrestore %69 : !llvm.ptr
        llvm.br ^bb5
      ^bb5:  // pred: ^bb4
        omp.yield
      }
      omp.terminator
    }
    llvm.return
  }
  llvm.func @comet_sort_index(i64, !llvm.ptr, i64, i64) attributes {sym_visibility = "private"}
}

