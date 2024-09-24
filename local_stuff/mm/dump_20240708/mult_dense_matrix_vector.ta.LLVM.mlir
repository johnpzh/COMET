module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(32 : index) : i64
    %1 = llvm.mlir.constant(2.300000e+00 : f64) : f64
    %2 = llvm.mlir.constant(3.700000e+00 : f64) : f64
    %3 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(1 : index) : i64
    %6 = llvm.mlir.constant(16 : index) : i64
    %7 = llvm.mlir.constant(8 : index) : i64
    %8 = llvm.mlir.zero : !llvm.ptr
    %9 = llvm.getelementptr %8[128] : (!llvm.ptr) -> !llvm.ptr, f64
    %10 = llvm.ptrtoint %9 : !llvm.ptr to i64
    %11 = llvm.add %10, %0  : i64
    %12 = llvm.call @malloc(%11) : (i64) -> !llvm.ptr
    %13 = llvm.ptrtoint %12 : !llvm.ptr to i64
    %14 = llvm.sub %0, %5  : i64
    %15 = llvm.add %13, %14  : i64
    %16 = llvm.urem %15, %0  : i64
    %17 = llvm.sub %15, %16  : i64
    %18 = llvm.inttoptr %17 : i64 to !llvm.ptr
    %19 = llvm.mlir.zero : !llvm.ptr
    %20 = llvm.getelementptr %19[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.add %21, %0  : i64
    %23 = llvm.call @malloc(%22) : (i64) -> !llvm.ptr
    %24 = llvm.ptrtoint %23 : !llvm.ptr to i64
    %25 = llvm.sub %0, %5  : i64
    %26 = llvm.add %24, %25  : i64
    %27 = llvm.urem %26, %0  : i64
    %28 = llvm.sub %26, %27  : i64
    %29 = llvm.inttoptr %28 : i64 to !llvm.ptr
    %30 = llvm.mlir.zero : !llvm.ptr
    %31 = llvm.getelementptr %30[8] : (!llvm.ptr) -> !llvm.ptr, f64
    %32 = llvm.ptrtoint %31 : !llvm.ptr to i64
    %33 = llvm.add %32, %0  : i64
    %34 = llvm.call @malloc(%33) : (i64) -> !llvm.ptr
    %35 = llvm.ptrtoint %34 : !llvm.ptr to i64
    %36 = llvm.sub %0, %5  : i64
    %37 = llvm.add %35, %36  : i64
    %38 = llvm.urem %37, %0  : i64
    %39 = llvm.sub %37, %38  : i64
    %40 = llvm.inttoptr %39 : i64 to !llvm.ptr
    %41 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %42 = llvm.insertvalue %34, %41[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.insertvalue %4, %43[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.insertvalue %7, %44[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.insertvalue %5, %45[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%47: i64):  // 2 preds: ^bb0, ^bb5
    %48 = llvm.icmp "slt" %47, %7 : i64
    llvm.cond_br %48, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%49: i64):  // 2 preds: ^bb2, ^bb4
    %50 = llvm.icmp "slt" %49, %6 : i64
    llvm.cond_br %50, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %51 = llvm.mul %47, %6  : i64
    %52 = llvm.add %51, %49  : i64
    %53 = llvm.getelementptr %18[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %53 : f64, !llvm.ptr
    %54 = llvm.add %49, %5  : i64
    llvm.br ^bb3(%54 : i64)
  ^bb5:  // pred: ^bb3
    %55 = llvm.add %47, %5  : i64
    llvm.br ^bb1(%55 : i64)
  ^bb6:  // pred: ^bb1
    llvm.br ^bb7(%4 : i64)
  ^bb7(%56: i64):  // 2 preds: ^bb6, ^bb8
    %57 = llvm.icmp "slt" %56, %6 : i64
    llvm.cond_br %57, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %58 = llvm.getelementptr %29[%56] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %58 : f64, !llvm.ptr
    %59 = llvm.add %56, %5  : i64
    llvm.br ^bb7(%59 : i64)
  ^bb9:  // pred: ^bb7
    llvm.br ^bb10(%4 : i64)
  ^bb10(%60: i64):  // 2 preds: ^bb9, ^bb11
    %61 = llvm.icmp "slt" %60, %7 : i64
    llvm.cond_br %61, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %62 = llvm.getelementptr %40[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %62 : f64, !llvm.ptr
    %63 = llvm.add %60, %5  : i64
    llvm.br ^bb10(%63 : i64)
  ^bb12:  // pred: ^bb10
    omp.parallel {
      omp.wsloop for  (%arg0) : i64 = (%4) to (%7) step (%5) {
        %65 = llvm.intr.stacksave : !llvm.ptr
        llvm.br ^bb1
      ^bb1:  // pred: ^bb0
        llvm.br ^bb2(%4 : i64)
      ^bb2(%66: i64):  // 2 preds: ^bb1, ^bb3
        %67 = llvm.icmp "slt" %66, %6 : i64
        llvm.cond_br %67, ^bb3, ^bb4
      ^bb3:  // pred: ^bb2
        %68 = llvm.mul %arg0, %6  : i64
        %69 = llvm.add %68, %66  : i64
        %70 = llvm.getelementptr %18[%69] : (!llvm.ptr, i64) -> !llvm.ptr, f64
        %71 = llvm.load %70 : !llvm.ptr -> f64
        %72 = llvm.getelementptr %29[%66] : (!llvm.ptr, i64) -> !llvm.ptr, f64
        %73 = llvm.load %72 : !llvm.ptr -> f64
        %74 = llvm.getelementptr %40[%arg0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
        %75 = llvm.load %74 : !llvm.ptr -> f64
        %76 = llvm.fmul %71, %73  : f64
        %77 = llvm.fadd %75, %76  : f64
        %78 = llvm.getelementptr %40[%arg0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
        llvm.store %77, %78 : f64, !llvm.ptr
        %79 = llvm.add %66, %5  : i64
        llvm.br ^bb2(%79 : i64)
      ^bb4:  // pred: ^bb2
        llvm.intr.stackrestore %65 : !llvm.ptr
        llvm.br ^bb5
      ^bb5:  // pred: ^bb4
        omp.yield
      }
      omp.terminator
    }
    %64 = llvm.alloca %5 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %46, %64 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    llvm.call @comet_print_memref_f64(%5, %64) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_sort_index(i64, !llvm.ptr, i64, i64) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}

