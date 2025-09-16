module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(4 : index) : i64
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
    %15 = llvm.getelementptr %14[%13] : (!llvm.ptr, i64) -> !llvm.ptr, f64
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
    %39 = llvm.icmp "slt" %38, %1 : i64
    llvm.cond_br %39, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %40 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.mul %36, %41 : i64
    %43 = llvm.add %42, %38 : i64
    %44 = llvm.getelementptr %40[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %44 : f64, !llvm.ptr
    %45 = llvm.add %38, %3 : i64
    llvm.br ^bb3(%45 : i64)
  ^bb5:  // pred: ^bb3
    %46 = llvm.add %36, %3 : i64
    llvm.br ^bb1(%46 : i64)
  ^bb6:  // pred: ^bb1
    %47 = llvm.mlir.constant(4 : index) : i64
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(8 : index) : i64
    %51 = llvm.mlir.zero : !llvm.ptr
    %52 = llvm.getelementptr %51[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %53 = llvm.ptrtoint %52 : !llvm.ptr to i64
    %54 = llvm.mlir.constant(32 : index) : i64
    %55 = llvm.add %53, %54 : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr
    %57 = llvm.ptrtoint %56 : !llvm.ptr to i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.sub %54, %58 : i64
    %60 = llvm.add %57, %59 : i64
    %61 = llvm.urem %60, %54  : i64
    %62 = llvm.sub %60, %61 : i64
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
    llvm.br ^bb7(%4 : i64)
  ^bb7(%73: i64):  // 2 preds: ^bb6, ^bb11
    %74 = llvm.icmp "slt" %73, %1 : i64
    llvm.cond_br %74, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%75: i64):  // 2 preds: ^bb8, ^bb10
    %76 = llvm.icmp "slt" %75, %0 : i64
    llvm.cond_br %76, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %77 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.mul %73, %78 : i64
    %80 = llvm.add %79, %75 : i64
    %81 = llvm.getelementptr %77[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %81 : f64, !llvm.ptr
    %82 = llvm.add %75, %3 : i64
    llvm.br ^bb9(%82 : i64)
  ^bb11:  // pred: ^bb9
    %83 = llvm.add %73, %3 : i64
    llvm.br ^bb7(%83 : i64)
  ^bb12:  // pred: ^bb7
    %84 = llvm.mlir.constant(8 : index) : i64
    %85 = llvm.mlir.constant(2 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(16 : index) : i64
    %88 = llvm.mlir.zero : !llvm.ptr
    %89 = llvm.getelementptr %88[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %90 = llvm.ptrtoint %89 : !llvm.ptr to i64
    %91 = llvm.mlir.constant(32 : index) : i64
    %92 = llvm.add %90, %91 : i64
    %93 = llvm.call @malloc(%92) : (i64) -> !llvm.ptr
    %94 = llvm.ptrtoint %93 : !llvm.ptr to i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.sub %91, %95 : i64
    %97 = llvm.add %94, %96 : i64
    %98 = llvm.urem %97, %91  : i64
    %99 = llvm.sub %97, %98 : i64
    %100 = llvm.inttoptr %99 : i64 to !llvm.ptr
    %101 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %102 = llvm.insertvalue %93, %101[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.insertvalue %100, %102[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.insertvalue %104, %103[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.insertvalue %84, %105[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.insertvalue %85, %106[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.insertvalue %85, %107[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.insertvalue %86, %108[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%4 : i64)
  ^bb13(%110: i64):  // 2 preds: ^bb12, ^bb17
    %111 = llvm.icmp "slt" %110, %2 : i64
    llvm.cond_br %111, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%112: i64):  // 2 preds: ^bb14, ^bb16
    %113 = llvm.icmp "slt" %112, %0 : i64
    llvm.cond_br %113, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %114 = llvm.extractvalue %109[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.mul %110, %115 : i64
    %117 = llvm.add %116, %112 : i64
    %118 = llvm.getelementptr %114[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %118 : f64, !llvm.ptr
    %119 = llvm.add %112, %3 : i64
    llvm.br ^bb15(%119 : i64)
  ^bb17:  // pred: ^bb15
    %120 = llvm.add %110, %3 : i64
    llvm.br ^bb13(%120 : i64)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : i64 = (%4) to (%2) step (%3) {
          llvm.br ^bb1(%4 : i64)
        ^bb1(%129: i64):  // 2 preds: ^bb0, ^bb5
          %130 = llvm.icmp "slt" %129, %9 : i64
          llvm.cond_br %130, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %131 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %132 = llvm.mlir.constant(4 : index) : i64
          %133 = llvm.mul %arg0, %132 : i64
          %134 = llvm.add %133, %129 : i64
          %135 = llvm.getelementptr %131[%134] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %136 = llvm.load %135 : !llvm.ptr -> f64
          llvm.br ^bb3(%4 : i64)
        ^bb3(%137: i64):  // 2 preds: ^bb2, ^bb4
          %138 = llvm.icmp "slt" %137, %8 : i64
          llvm.cond_br %138, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %139 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %140 = llvm.mlir.constant(2 : index) : i64
          %141 = llvm.mul %129, %140 : i64
          %142 = llvm.add %141, %137 : i64
          %143 = llvm.getelementptr %139[%142] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %144 = llvm.load %143 : !llvm.ptr -> f64
          %145 = llvm.fmul %136, %144  : f64
          %146 = llvm.extractvalue %109[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %147 = llvm.mlir.constant(2 : index) : i64
          %148 = llvm.mul %arg0, %147 : i64
          %149 = llvm.add %148, %137 : i64
          %150 = llvm.getelementptr %146[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %151 = llvm.load %150 : !llvm.ptr -> f64
          %152 = llvm.fadd %151, %145  : f64
          %153 = llvm.extractvalue %109[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %154 = llvm.mlir.constant(2 : index) : i64
          %155 = llvm.mul %arg0, %154 : i64
          %156 = llvm.add %155, %137 : i64
          %157 = llvm.getelementptr %153[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %152, %157 : f64, !llvm.ptr
          %158 = llvm.add %137, %3 : i64
          llvm.br ^bb3(%158 : i64)
        ^bb5:  // pred: ^bb3
          %159 = llvm.add %129, %3 : i64
          llvm.br ^bb1(%159 : i64)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.alloca %121 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %109, %122 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %125 = llvm.insertvalue %123, %124[0] : !llvm.struct<(i64, ptr)> 
    %126 = llvm.insertvalue %122, %125[1] : !llvm.struct<(i64, ptr)> 
    %127 = llvm.extractvalue %126[0] : !llvm.struct<(i64, ptr)> 
    %128 = llvm.extractvalue %126[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%127, %128) : (i64, !llvm.ptr) -> ()
    llvm.call @printF64(%6) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}
