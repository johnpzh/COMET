module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(32 : index) : i64
    %1 = llvm.mlir.constant(1280000000 : index) : i64
    %2 = llvm.mlir.constant(2.300000e+00 : f64) : f64
    %3 = llvm.mlir.constant(3.700000e+00 : f64) : f64
    %4 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %5 = llvm.mlir.constant(0 : index) : i64
    %6 = llvm.mlir.constant(1 : index) : i64
    %7 = llvm.mlir.constant(16000 : index) : i64
    %8 = llvm.mlir.constant(80000 : index) : i64
    %9 = llvm.mlir.zero : !llvm.ptr
    %10 = llvm.getelementptr %9[%1] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %11 = llvm.ptrtoint %10 : !llvm.ptr to i64
    %12 = llvm.add %11, %0  : i64
    %13 = llvm.call @malloc(%12) : (i64) -> !llvm.ptr
    %14 = llvm.ptrtoint %13 : !llvm.ptr to i64
    %15 = llvm.sub %0, %6  : i64
    %16 = llvm.add %14, %15  : i64
    %17 = llvm.urem %16, %0  : i64
    %18 = llvm.sub %16, %17  : i64
    %19 = llvm.inttoptr %18 : i64 to !llvm.ptr
    %20 = llvm.mlir.zero : !llvm.ptr
    %21 = llvm.getelementptr %20[16000] : (!llvm.ptr) -> !llvm.ptr, f64
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.add %22, %0  : i64
    %24 = llvm.call @malloc(%23) : (i64) -> !llvm.ptr
    %25 = llvm.ptrtoint %24 : !llvm.ptr to i64
    %26 = llvm.sub %0, %6  : i64
    %27 = llvm.add %25, %26  : i64
    %28 = llvm.urem %27, %0  : i64
    %29 = llvm.sub %27, %28  : i64
    %30 = llvm.inttoptr %29 : i64 to !llvm.ptr
    %31 = llvm.mlir.zero : !llvm.ptr
    %32 = llvm.getelementptr %31[80000] : (!llvm.ptr) -> !llvm.ptr, f64
    %33 = llvm.ptrtoint %32 : !llvm.ptr to i64
    %34 = llvm.add %33, %0  : i64
    %35 = llvm.call @malloc(%34) : (i64) -> !llvm.ptr
    %36 = llvm.ptrtoint %35 : !llvm.ptr to i64
    %37 = llvm.sub %0, %6  : i64
    %38 = llvm.add %36, %37  : i64
    %39 = llvm.urem %38, %0  : i64
    %40 = llvm.sub %38, %39  : i64
    %41 = llvm.inttoptr %40 : i64 to !llvm.ptr
    llvm.br ^bb1(%5 : i64)
  ^bb1(%42: i64):  // 2 preds: ^bb0, ^bb5
    %43 = llvm.icmp "slt" %42, %8 : i64
    llvm.cond_br %43, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%5 : i64)
  ^bb3(%44: i64):  // 2 preds: ^bb2, ^bb4
    %45 = llvm.icmp "slt" %44, %7 : i64
    llvm.cond_br %45, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %46 = llvm.mul %42, %7  : i64
    %47 = llvm.add %46, %44  : i64
    %48 = llvm.getelementptr %19[%47] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %48 : f64, !llvm.ptr
    %49 = llvm.add %44, %6  : i64
    llvm.br ^bb3(%49 : i64)
  ^bb5:  // pred: ^bb3
    %50 = llvm.add %42, %6  : i64
    llvm.br ^bb1(%50 : i64)
  ^bb6:  // pred: ^bb1
    llvm.br ^bb7(%5 : i64)
  ^bb7(%51: i64):  // 2 preds: ^bb6, ^bb8
    %52 = llvm.icmp "slt" %51, %7 : i64
    llvm.cond_br %52, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %53 = llvm.getelementptr %30[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %53 : f64, !llvm.ptr
    %54 = llvm.add %51, %6  : i64
    llvm.br ^bb7(%54 : i64)
  ^bb9:  // pred: ^bb7
    llvm.br ^bb10(%5 : i64)
  ^bb10(%55: i64):  // 2 preds: ^bb9, ^bb11
    %56 = llvm.icmp "slt" %55, %8 : i64
    llvm.cond_br %56, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %57 = llvm.getelementptr %41[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %57 : f64, !llvm.ptr
    %58 = llvm.add %55, %6  : i64
    llvm.br ^bb10(%58 : i64)
  ^bb12:  // pred: ^bb10
    %59 = llvm.call @getTime() : () -> f64
    omp.parallel {
      omp.wsloop for  (%arg0) : i64 = (%5) to (%8) step (%6) {
        %61 = llvm.intr.stacksave : !llvm.ptr
        llvm.br ^bb1
      ^bb1:  // pred: ^bb0
        llvm.br ^bb2(%5 : i64)
      ^bb2(%62: i64):  // 2 preds: ^bb1, ^bb3
        %63 = llvm.icmp "slt" %62, %7 : i64
        llvm.cond_br %63, ^bb3, ^bb4
      ^bb3:  // pred: ^bb2
        %64 = llvm.mul %arg0, %7  : i64
        %65 = llvm.add %64, %62  : i64
        %66 = llvm.getelementptr %19[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
        %67 = llvm.load %66 : !llvm.ptr -> f64
        %68 = llvm.getelementptr %30[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f64
        %69 = llvm.load %68 : !llvm.ptr -> f64
        %70 = llvm.getelementptr %41[%arg0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
        %71 = llvm.load %70 : !llvm.ptr -> f64
        %72 = llvm.fmul %67, %69  : f64
        %73 = llvm.fadd %71, %72  : f64
        %74 = llvm.getelementptr %41[%arg0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
        llvm.store %73, %74 : f64, !llvm.ptr
        %75 = llvm.add %62, %6  : i64
        llvm.br ^bb2(%75 : i64)
      ^bb4:  // pred: ^bb2
        llvm.intr.stackrestore %61 : !llvm.ptr
        llvm.br ^bb5
      ^bb5:  // pred: ^bb4
        omp.yield
      }
      omp.terminator
    }
    %60 = llvm.call @getTime() : () -> f64
    llvm.call @printElapsedTime(%59, %60) : (f64, f64) -> ()
    llvm.return
  }
  llvm.func @comet_sort_index(i64, !llvm.ptr, i64, i64) attributes {sym_visibility = "private"}
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func @printElapsedTime(f64, f64) attributes {sym_visibility = "private"}
}

