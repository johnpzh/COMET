module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(32 : index) : i64
    %2 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %3 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %4 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %5 = llvm.mlir.constant(0 : index) : i64
    %6 = llvm.mlir.constant(1 : index) : i64
    %7 = llvm.mlir.constant(4 : index) : i64
    %8 = llvm.mlir.zero : !llvm.ptr
    %9 = llvm.getelementptr %8[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %10 = llvm.ptrtoint %9 : !llvm.ptr to i64
    %11 = llvm.add %10, %1  : i64
    %12 = llvm.call @malloc(%11) : (i64) -> !llvm.ptr
    %13 = llvm.ptrtoint %12 : !llvm.ptr to i64
    %14 = llvm.sub %1, %6  : i64
    %15 = llvm.add %13, %14  : i64
    %16 = llvm.urem %15, %1  : i64
    %17 = llvm.sub %15, %16  : i64
    %18 = llvm.inttoptr %17 : i64 to !llvm.ptr
    %19 = llvm.mlir.zero : !llvm.ptr
    %20 = llvm.getelementptr %19[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.add %21, %1  : i64
    %23 = llvm.call @malloc(%22) : (i64) -> !llvm.ptr
    %24 = llvm.ptrtoint %23 : !llvm.ptr to i64
    %25 = llvm.sub %1, %6  : i64
    %26 = llvm.add %24, %25  : i64
    %27 = llvm.urem %26, %1  : i64
    %28 = llvm.sub %26, %27  : i64
    %29 = llvm.inttoptr %28 : i64 to !llvm.ptr
    %30 = llvm.mlir.zero : !llvm.ptr
    %31 = llvm.getelementptr %30[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %32 = llvm.ptrtoint %31 : !llvm.ptr to i64
    %33 = llvm.add %32, %1  : i64
    %34 = llvm.call @malloc(%33) : (i64) -> !llvm.ptr
    %35 = llvm.ptrtoint %34 : !llvm.ptr to i64
    %36 = llvm.sub %1, %6  : i64
    %37 = llvm.add %35, %36  : i64
    %38 = llvm.urem %37, %1  : i64
    %39 = llvm.sub %37, %38  : i64
    %40 = llvm.inttoptr %39 : i64 to !llvm.ptr
    %41 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %42 = llvm.insertvalue %34, %41[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.insertvalue %5, %43[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.insertvalue %7, %44[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.insertvalue %7, %45[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.insertvalue %7, %46[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.insertvalue %6, %47[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%5 : i64)
  ^bb1(%49: i64):  // 2 preds: ^bb0, ^bb5
    %50 = llvm.icmp "slt" %49, %7 : i64
    llvm.cond_br %50, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%5 : i64)
  ^bb3(%51: i64):  // 2 preds: ^bb2, ^bb4
    %52 = llvm.icmp "slt" %51, %7 : i64
    llvm.cond_br %52, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %53 = llvm.mul %49, %7  : i64
    %54 = llvm.add %53, %51  : i64
    %55 = llvm.getelementptr %18[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %55 : f64, !llvm.ptr
    %56 = llvm.add %51, %6  : i64
    llvm.br ^bb3(%56 : i64)
  ^bb5:  // pred: ^bb3
    %57 = llvm.add %49, %6  : i64
    llvm.br ^bb1(%57 : i64)
  ^bb6:  // pred: ^bb1
    llvm.br ^bb7(%5 : i64)
  ^bb7(%58: i64):  // 2 preds: ^bb6, ^bb11
    %59 = llvm.icmp "slt" %58, %7 : i64
    llvm.cond_br %59, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%5 : i64)
  ^bb9(%60: i64):  // 2 preds: ^bb8, ^bb10
    %61 = llvm.icmp "slt" %60, %7 : i64
    llvm.cond_br %61, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %62 = llvm.mul %58, %7  : i64
    %63 = llvm.add %62, %60  : i64
    %64 = llvm.getelementptr %29[%63] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %64 : f64, !llvm.ptr
    %65 = llvm.add %60, %6  : i64
    llvm.br ^bb9(%65 : i64)
  ^bb11:  // pred: ^bb9
    %66 = llvm.add %58, %6  : i64
    llvm.br ^bb7(%66 : i64)
  ^bb12:  // pred: ^bb7
    llvm.br ^bb13(%5 : i64)
  ^bb13(%67: i64):  // 2 preds: ^bb12, ^bb17
    %68 = llvm.icmp "slt" %67, %7 : i64
    llvm.cond_br %68, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%5 : i64)
  ^bb15(%69: i64):  // 2 preds: ^bb14, ^bb16
    %70 = llvm.icmp "slt" %69, %7 : i64
    llvm.cond_br %70, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %71 = llvm.mul %67, %7  : i64
    %72 = llvm.add %71, %69  : i64
    %73 = llvm.getelementptr %40[%72] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %73 : f64, !llvm.ptr
    %74 = llvm.add %69, %6  : i64
    llvm.br ^bb15(%74 : i64)
  ^bb17:  // pred: ^bb15
    %75 = llvm.add %67, %6  : i64
    llvm.br ^bb13(%75 : i64)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop for  (%arg0) : i64 = (%5) to (%7) step (%6) {
        %77 = llvm.intr.stacksave : !llvm.ptr
        llvm.br ^bb1
      ^bb1:  // pred: ^bb0
        llvm.br ^bb2(%5 : i64)
      ^bb2(%78: i64):  // 2 preds: ^bb1, ^bb3
        %79 = llvm.icmp "slt" %78, %7 : i64
        llvm.cond_br %79, ^bb3, ^bb4
      ^bb3:  // pred: ^bb2
        %80 = llvm.mul %arg0, %7  : i64
        %81 = llvm.add %80, %78  : i64
        %82 = llvm.getelementptr %18[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f64
        %83 = llvm.load %82 : !llvm.ptr -> f64
        %84 = llvm.mul %arg0, %7  : i64
        %85 = llvm.add %84, %78  : i64
        %86 = llvm.getelementptr %29[%85] : (!llvm.ptr, i64) -> !llvm.ptr, f64
        %87 = llvm.load %86 : !llvm.ptr -> f64
        %88 = llvm.fsub %83, %87  : f64
        %89 = llvm.mul %arg0, %7  : i64
        %90 = llvm.add %89, %78  : i64
        %91 = llvm.getelementptr %40[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f64
        llvm.store %88, %91 : f64, !llvm.ptr
        %92 = llvm.add %78, %6  : i64
        llvm.br ^bb2(%92 : i64)
      ^bb4:  // pred: ^bb2
        llvm.intr.stackrestore %77 : !llvm.ptr
        llvm.br ^bb5
      ^bb5:  // pred: ^bb4
        omp.yield
      }
      omp.terminator
    }
    %76 = llvm.alloca %6 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %48, %76 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    llvm.call @comet_print_memref_f64(%0, %76) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_sort_index(i64, !llvm.ptr, i64, i64) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}

