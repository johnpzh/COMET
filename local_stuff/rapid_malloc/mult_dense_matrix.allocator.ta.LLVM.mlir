module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @rapid_malloc(!llvm.ptr, i64) -> !llvm.ptr
  llvm.func @rapid_initialize() -> !llvm.ptr
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
    %19 = llvm.call @rapid_initialize() : () -> !llvm.ptr
    %20 = llvm.call @rapid_malloc(%19, %18) : (!llvm.ptr, i64) -> !llvm.ptr
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.sub %17, %22 : i64
    %24 = llvm.add %21, %23 : i64
    %25 = llvm.urem %24, %17  : i64
    %26 = llvm.sub %24, %25 : i64
    %27 = llvm.inttoptr %26 : i64 to !llvm.ptr
    %28 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %29 = llvm.insertvalue %20, %28[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.insertvalue %10, %32[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %11, %33[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.insertvalue %11, %34[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %12, %35[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%37: i64):  // 2 preds: ^bb0, ^bb5
    %38 = llvm.icmp "slt" %37, %2 : i64
    llvm.cond_br %38, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%39: i64):  // 2 preds: ^bb2, ^bb4
    %40 = llvm.icmp "slt" %39, %1 : i64
    llvm.cond_br %40, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %41 = llvm.extractvalue %36[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.mlir.constant(4 : index) : i64
    %43 = llvm.mul %37, %42 : i64
    %44 = llvm.add %43, %39 : i64
    %45 = llvm.getelementptr %41[%44] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %45 : f64, !llvm.ptr
    %46 = llvm.add %39, %3 : i64
    llvm.br ^bb3(%46 : i64)
  ^bb5:  // pred: ^bb3
    %47 = llvm.add %37, %3 : i64
    llvm.br ^bb1(%47 : i64)
  ^bb6:  // pred: ^bb1
    %48 = llvm.mlir.constant(4 : index) : i64
    %49 = llvm.mlir.constant(2 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(8 : index) : i64
    %52 = llvm.mlir.zero : !llvm.ptr
    %53 = llvm.getelementptr %52[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %54 = llvm.ptrtoint %53 : !llvm.ptr to i64
    %55 = llvm.mlir.constant(32 : index) : i64
    %56 = llvm.add %54, %55 : i64
    %57 = llvm.call @malloc(%56) : (i64) -> !llvm.ptr
    %58 = llvm.ptrtoint %57 : !llvm.ptr to i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.sub %55, %59 : i64
    %61 = llvm.add %58, %60 : i64
    %62 = llvm.urem %61, %55  : i64
    %63 = llvm.sub %61, %62 : i64
    %64 = llvm.inttoptr %63 : i64 to !llvm.ptr
    %65 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %66 = llvm.insertvalue %57, %65[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.insertvalue %64, %66[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.insertvalue %68, %67[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.insertvalue %48, %69[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.insertvalue %49, %70[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.insertvalue %49, %71[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.insertvalue %50, %72[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%4 : i64)
  ^bb7(%74: i64):  // 2 preds: ^bb6, ^bb11
    %75 = llvm.icmp "slt" %74, %1 : i64
    llvm.cond_br %75, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%76: i64):  // 2 preds: ^bb8, ^bb10
    %77 = llvm.icmp "slt" %76, %0 : i64
    llvm.cond_br %77, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %78 = llvm.extractvalue %73[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mul %74, %79 : i64
    %81 = llvm.add %80, %76 : i64
    %82 = llvm.getelementptr %78[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %82 : f64, !llvm.ptr
    %83 = llvm.add %76, %3 : i64
    llvm.br ^bb9(%83 : i64)
  ^bb11:  // pred: ^bb9
    %84 = llvm.add %74, %3 : i64
    llvm.br ^bb7(%84 : i64)
  ^bb12:  // pred: ^bb7
    %85 = llvm.mlir.constant(8 : index) : i64
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(16 : index) : i64
    %89 = llvm.mlir.zero : !llvm.ptr
    %90 = llvm.getelementptr %89[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %91 = llvm.ptrtoint %90 : !llvm.ptr to i64
    %92 = llvm.mlir.constant(32 : index) : i64
    %93 = llvm.add %91, %92 : i64
    %94 = llvm.call @malloc(%93) : (i64) -> !llvm.ptr
    %95 = llvm.ptrtoint %94 : !llvm.ptr to i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.sub %92, %96 : i64
    %98 = llvm.add %95, %97 : i64
    %99 = llvm.urem %98, %92  : i64
    %100 = llvm.sub %98, %99 : i64
    %101 = llvm.inttoptr %100 : i64 to !llvm.ptr
    %102 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %103 = llvm.insertvalue %94, %102[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.insertvalue %101, %103[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.insertvalue %105, %104[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.insertvalue %85, %106[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.insertvalue %86, %107[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.insertvalue %86, %108[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %110 = llvm.insertvalue %87, %109[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%4 : i64)
  ^bb13(%111: i64):  // 2 preds: ^bb12, ^bb17
    %112 = llvm.icmp "slt" %111, %2 : i64
    llvm.cond_br %112, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%4 : i64)
  ^bb15(%113: i64):  // 2 preds: ^bb14, ^bb16
    %114 = llvm.icmp "slt" %113, %0 : i64
    llvm.cond_br %114, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %115 = llvm.extractvalue %110[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %116 = llvm.mlir.constant(2 : index) : i64
    %117 = llvm.mul %111, %116 : i64
    %118 = llvm.add %117, %113 : i64
    %119 = llvm.getelementptr %115[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %119 : f64, !llvm.ptr
    %120 = llvm.add %113, %3 : i64
    llvm.br ^bb15(%120 : i64)
  ^bb17:  // pred: ^bb15
    %121 = llvm.add %111, %3 : i64
    llvm.br ^bb13(%121 : i64)
  ^bb18:  // pred: ^bb13
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : i64 = (%4) to (%2) step (%3) {
          llvm.br ^bb1(%4 : i64)
        ^bb1(%130: i64):  // 2 preds: ^bb0, ^bb5
          %131 = llvm.icmp "slt" %130, %9 : i64
          llvm.cond_br %131, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %132 = llvm.extractvalue %36[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %133 = llvm.mlir.constant(4 : index) : i64
          %134 = llvm.mul %arg0, %133 : i64
          %135 = llvm.add %134, %130 : i64
          %136 = llvm.getelementptr %132[%135] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %137 = llvm.load %136 : !llvm.ptr -> f64
          llvm.br ^bb3(%4 : i64)
        ^bb3(%138: i64):  // 2 preds: ^bb2, ^bb4
          %139 = llvm.icmp "slt" %138, %8 : i64
          llvm.cond_br %139, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %140 = llvm.extractvalue %73[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %141 = llvm.mlir.constant(2 : index) : i64
          %142 = llvm.mul %130, %141 : i64
          %143 = llvm.add %142, %138 : i64
          %144 = llvm.getelementptr %140[%143] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %145 = llvm.load %144 : !llvm.ptr -> f64
          %146 = llvm.fmul %137, %145  : f64
          %147 = llvm.extractvalue %110[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %148 = llvm.mlir.constant(2 : index) : i64
          %149 = llvm.mul %arg0, %148 : i64
          %150 = llvm.add %149, %138 : i64
          %151 = llvm.getelementptr %147[%150] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %152 = llvm.load %151 : !llvm.ptr -> f64
          %153 = llvm.fadd %152, %146  : f64
          %154 = llvm.extractvalue %110[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %155 = llvm.mlir.constant(2 : index) : i64
          %156 = llvm.mul %arg0, %155 : i64
          %157 = llvm.add %156, %138 : i64
          %158 = llvm.getelementptr %154[%157] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %153, %158 : f64, !llvm.ptr
          %159 = llvm.add %138, %3 : i64
          llvm.br ^bb3(%159 : i64)
        ^bb5:  // pred: ^bb3
          %160 = llvm.add %130, %3 : i64
          llvm.br ^bb1(%160 : i64)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.alloca %122 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %110, %123 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %126 = llvm.insertvalue %124, %125[0] : !llvm.struct<(i64, ptr)> 
    %127 = llvm.insertvalue %123, %126[1] : !llvm.struct<(i64, ptr)> 
    %128 = llvm.extractvalue %127[0] : !llvm.struct<(i64, ptr)> 
    %129 = llvm.extractvalue %127[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%128, %129) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
