module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(32 : index) : i64
    %1 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %2 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %3 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(1 : index) : i64
    %6 = llvm.mlir.constant(2 : index) : i64
    %7 = llvm.mlir.constant(4 : index) : i64
    %8 = llvm.mlir.constant(8 : index) : i64
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
    %42 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %43 = llvm.insertvalue %35, %42[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.insertvalue %4, %44[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.insertvalue %8, %45[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.insertvalue %6, %46[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.insertvalue %6, %47[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.insertvalue %5, %48[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%50: i64):  // 2 preds: ^bb0, ^bb5
    %51 = llvm.icmp "slt" %50, %8 : i64
    llvm.cond_br %51, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%52: i64):  // 2 preds: ^bb2, ^bb4
    %53 = llvm.icmp "slt" %52, %7 : i64
    llvm.cond_br %53, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %54 = llvm.mul %50, %7  : i64
    %55 = llvm.add %54, %52  : i64
    %56 = llvm.getelementptr %19[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %56 : f64, !llvm.ptr
    %57 = llvm.add %52, %5  : i64
    llvm.br ^bb3(%57 : i64)
  ^bb5:  // pred: ^bb3
    %58 = llvm.add %50, %5  : i64
    llvm.br ^bb1(%58 : i64)
  ^bb6:  // pred: ^bb1
    llvm.br ^bb7(%4 : i64)
  ^bb7(%59: i64):  // 2 preds: ^bb6, ^bb11
    %60 = llvm.icmp "slt" %59, %7 : i64
    llvm.cond_br %60, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%61: i64):  // 2 preds: ^bb8, ^bb10
    %62 = llvm.icmp "slt" %61, %6 : i64
    llvm.cond_br %62, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %63 = llvm.mul %59, %6  : i64
    %64 = llvm.add %63, %61  : i64
    %65 = llvm.getelementptr %30[%64] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %65 : f64, !llvm.ptr
    %66 = llvm.add %61, %5  : i64
    llvm.br ^bb9(%66 : i64)
  ^bb11:  // pred: ^bb9
    %67 = llvm.add %59, %5  : i64
    llvm.br ^bb7(%67 : i64)
  ^bb12:  // pred: ^bb7
    llvm.br ^bb13(%4 : i64)
  ^bb13(%68: i64):  // 2 preds: ^bb12, ^bb17
    %69 = llvm.icmp "slt" %68, %8 : i64
    llvm.cond_br %69, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%70: i64):  // 2 preds: ^bb14, ^bb16
    %71 = llvm.icmp "slt" %70, %6 : i64
    llvm.cond_br %71, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %72 = llvm.mul %68, %6  : i64
    %73 = llvm.add %72, %70  : i64
    %74 = llvm.getelementptr %41[%73] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %74 : f64, !llvm.ptr
    %75 = llvm.add %70, %5  : i64
    llvm.br ^bb15(%75 : i64)
  ^bb17:  // pred: ^bb15
    %76 = llvm.add %68, %5  : i64
    llvm.br ^bb13(%76 : i64)
  ^bb18:  // pred: ^bb13
    %77 = llvm.call @getTime() : () -> f64
    omp.parallel {
      omp.wsloop for  (%arg0) : i64 = (%4) to (%8) step (%5) {
        %80 = llvm.intr.stacksave : !llvm.ptr
        llvm.br ^bb1
      ^bb1:  // pred: ^bb0
        llvm.br ^bb2(%4 : i64)
      ^bb2(%81: i64):  // 2 preds: ^bb1, ^bb6
        %82 = llvm.icmp "slt" %81, %7 : i64
        llvm.cond_br %82, ^bb3, ^bb7
      ^bb3:  // pred: ^bb2
        llvm.br ^bb4(%4 : i64)
      ^bb4(%83: i64):  // 2 preds: ^bb3, ^bb5
        %84 = llvm.icmp "slt" %83, %6 : i64
        llvm.cond_br %84, ^bb5, ^bb6
      ^bb5:  // pred: ^bb4
        %85 = llvm.mul %arg0, %7  : i64
        %86 = llvm.add %85, %81  : i64
        %87 = llvm.getelementptr %19[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f64
        %88 = llvm.load %87 : !llvm.ptr -> f64
        %89 = llvm.mul %81, %6  : i64
        %90 = llvm.add %89, %83  : i64
        %91 = llvm.getelementptr %30[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f64
        %92 = llvm.load %91 : !llvm.ptr -> f64
        %93 = llvm.mul %arg0, %6  : i64
        %94 = llvm.add %93, %83  : i64
        %95 = llvm.getelementptr %41[%94] : (!llvm.ptr, i64) -> !llvm.ptr, f64
        %96 = llvm.load %95 : !llvm.ptr -> f64
        %97 = llvm.fmul %88, %92  : f64
        %98 = llvm.fadd %96, %97  : f64
        %99 = llvm.mul %arg0, %6  : i64
        %100 = llvm.add %99, %83  : i64
        %101 = llvm.getelementptr %41[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f64
        llvm.store %98, %101 : f64, !llvm.ptr
        %102 = llvm.add %83, %5  : i64
        llvm.br ^bb4(%102 : i64)
      ^bb6:  // pred: ^bb4
        %103 = llvm.add %81, %5  : i64
        llvm.br ^bb2(%103 : i64)
      ^bb7:  // pred: ^bb2
        llvm.intr.stackrestore %80 : !llvm.ptr
        llvm.br ^bb8
      ^bb8:  // pred: ^bb7
        omp.yield
      }
      omp.terminator
    }
    %78 = llvm.call @getTime() : () -> f64
    llvm.call @printElapsedTime(%77, %78) : (f64, f64) -> ()
    %79 = llvm.alloca %5 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %49, %79 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    llvm.call @comet_print_memref_f64(%6, %79) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_sort_index(i64, !llvm.ptr, i64, i64) attributes {sym_visibility = "private"}
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func @printElapsedTime(f64, f64) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}

