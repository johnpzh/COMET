module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @rapid_malloc(!llvm.ptr, i64) -> !llvm.ptr
  llvm.func @rapid_initialize() -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(4086 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(0 : index) : i64
    %3 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %4 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %5 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %6 = llvm.mlir.constant(4086 : i64) : i64
    %7 = llvm.mlir.constant(4086 : index) : i64
    %8 = llvm.mlir.constant(4086 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(16695396 : index) : i64
    %11 = llvm.mlir.zero : !llvm.ptr
    %12 = llvm.getelementptr %11[%10] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %13 = llvm.ptrtoint %12 : !llvm.ptr to i64
    %14 = llvm.mlir.constant(32 : index) : i64
    %15 = llvm.add %13, %14 : i64
    %16 = llvm.call @rapid_initialize() : () -> !llvm.ptr
    %17 = llvm.call @rapid_malloc(%16, %15) : (!llvm.ptr, i64) -> !llvm.ptr
    %18 = llvm.ptrtoint %17 : !llvm.ptr to i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.sub %14, %19 : i64
    %21 = llvm.add %18, %20 : i64
    %22 = llvm.urem %21, %14  : i64
    %23 = llvm.sub %21, %22 : i64
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
    llvm.br ^bb1(%2 : i64)
  ^bb1(%34: i64):  // 2 preds: ^bb0, ^bb5
    %35 = llvm.icmp "slt" %34, %0 : i64
    llvm.cond_br %35, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%2 : i64)
  ^bb3(%36: i64):  // 2 preds: ^bb2, ^bb4
    %37 = llvm.icmp "slt" %36, %0 : i64
    llvm.cond_br %37, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %38 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.mlir.constant(4086 : index) : i64
    %40 = llvm.mul %34, %39 : i64
    %41 = llvm.add %40, %36 : i64
    %42 = llvm.getelementptr %38[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %42 : f64, !llvm.ptr
    %43 = llvm.add %36, %1 : i64
    llvm.br ^bb3(%43 : i64)
  ^bb5:  // pred: ^bb3
    %44 = llvm.add %34, %1 : i64
    llvm.br ^bb1(%44 : i64)
  ^bb6:  // pred: ^bb1
    %45 = llvm.mlir.constant(4086 : index) : i64
    %46 = llvm.mlir.constant(4086 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(16695396 : index) : i64
    %49 = llvm.mlir.zero : !llvm.ptr
    %50 = llvm.getelementptr %49[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %51 = llvm.ptrtoint %50 : !llvm.ptr to i64
    %52 = llvm.mlir.constant(32 : index) : i64
    %53 = llvm.add %51, %52 : i64
    %54 = llvm.call @rapid_malloc(%16, %53) : (!llvm.ptr, i64) -> !llvm.ptr
    %55 = llvm.ptrtoint %54 : !llvm.ptr to i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.sub %52, %56 : i64
    %58 = llvm.add %55, %57 : i64
    %59 = llvm.urem %58, %52  : i64
    %60 = llvm.sub %58, %59 : i64
    %61 = llvm.inttoptr %60 : i64 to !llvm.ptr
    %62 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %63 = llvm.insertvalue %54, %62[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.insertvalue %45, %66[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.insertvalue %46, %67[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.insertvalue %46, %68[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.insertvalue %47, %69[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%2 : i64)
  ^bb7(%71: i64):  // 2 preds: ^bb6, ^bb11
    %72 = llvm.icmp "slt" %71, %0 : i64
    llvm.cond_br %72, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%2 : i64)
  ^bb9(%73: i64):  // 2 preds: ^bb8, ^bb10
    %74 = llvm.icmp "slt" %73, %0 : i64
    llvm.cond_br %74, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %75 = llvm.extractvalue %70[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.mlir.constant(4086 : index) : i64
    %77 = llvm.mul %71, %76 : i64
    %78 = llvm.add %77, %73 : i64
    %79 = llvm.getelementptr %75[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %79 : f64, !llvm.ptr
    %80 = llvm.add %73, %1 : i64
    llvm.br ^bb9(%80 : i64)
  ^bb11:  // pred: ^bb9
    %81 = llvm.add %71, %1 : i64
    llvm.br ^bb7(%81 : i64)
  ^bb12:  // pred: ^bb7
    %82 = llvm.mlir.constant(4086 : index) : i64
    %83 = llvm.mlir.constant(4086 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(16695396 : index) : i64
    %86 = llvm.mlir.zero : !llvm.ptr
    %87 = llvm.getelementptr %86[%85] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %88 = llvm.ptrtoint %87 : !llvm.ptr to i64
    %89 = llvm.mlir.constant(32 : index) : i64
    %90 = llvm.add %88, %89 : i64
    %91 = llvm.call @rapid_malloc(%16, %90) : (!llvm.ptr, i64) -> !llvm.ptr
    %92 = llvm.ptrtoint %91 : !llvm.ptr to i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.sub %89, %93 : i64
    %95 = llvm.add %92, %94 : i64
    %96 = llvm.urem %95, %89  : i64
    %97 = llvm.sub %95, %96 : i64
    %98 = llvm.inttoptr %97 : i64 to !llvm.ptr
    %99 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %100 = llvm.insertvalue %91, %99[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %101 = llvm.insertvalue %98, %100[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.insertvalue %102, %101[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.insertvalue %82, %103[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.insertvalue %83, %104[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.insertvalue %83, %105[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.insertvalue %84, %106[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%2 : i64)
  ^bb13(%108: i64):  // 2 preds: ^bb12, ^bb17
    %109 = llvm.icmp "slt" %108, %0 : i64
    llvm.cond_br %109, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%2 : i64)
  ^bb15(%110: i64):  // 2 preds: ^bb14, ^bb16
    %111 = llvm.icmp "slt" %110, %0 : i64
    llvm.cond_br %111, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %112 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %113 = llvm.mlir.constant(4086 : index) : i64
    %114 = llvm.mul %108, %113 : i64
    %115 = llvm.add %114, %110 : i64
    %116 = llvm.getelementptr %112[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %116 : f64, !llvm.ptr
    %117 = llvm.add %110, %1 : i64
    llvm.br ^bb15(%117 : i64)
  ^bb17:  // pred: ^bb15
    %118 = llvm.add %108, %1 : i64
    llvm.br ^bb13(%118 : i64)
  ^bb18:  // pred: ^bb13
    %119 = llvm.call @getTime() : () -> f64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0) : i64 = (%2) to (%0) step (%1) {
          llvm.br ^bb1(%2 : i64)
        ^bb1(%157: i64):  // 2 preds: ^bb0, ^bb5
          %158 = llvm.icmp "slt" %157, %6 : i64
          llvm.cond_br %158, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %159 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %160 = llvm.mlir.constant(4086 : index) : i64
          %161 = llvm.mul %arg0, %160 : i64
          %162 = llvm.add %161, %157 : i64
          %163 = llvm.getelementptr %159[%162] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %164 = llvm.load %163 : !llvm.ptr -> f64
          llvm.br ^bb3(%2 : i64)
        ^bb3(%165: i64):  // 2 preds: ^bb2, ^bb4
          %166 = llvm.icmp "slt" %165, %6 : i64
          llvm.cond_br %166, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %167 = llvm.extractvalue %70[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %168 = llvm.mlir.constant(4086 : index) : i64
          %169 = llvm.mul %157, %168 : i64
          %170 = llvm.add %169, %165 : i64
          %171 = llvm.getelementptr %167[%170] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %172 = llvm.load %171 : !llvm.ptr -> f64
          %173 = llvm.fmul %164, %172  : f64
          %174 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %175 = llvm.mlir.constant(4086 : index) : i64
          %176 = llvm.mul %arg0, %175 : i64
          %177 = llvm.add %176, %165 : i64
          %178 = llvm.getelementptr %174[%177] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %179 = llvm.load %178 : !llvm.ptr -> f64
          %180 = llvm.fadd %179, %173  : f64
          %181 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %182 = llvm.mlir.constant(4086 : index) : i64
          %183 = llvm.mul %arg0, %182 : i64
          %184 = llvm.add %183, %165 : i64
          %185 = llvm.getelementptr %181[%184] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %180, %185 : f64, !llvm.ptr
          %186 = llvm.add %165, %1 : i64
          llvm.br ^bb3(%186 : i64)
        ^bb5:  // pred: ^bb3
          %187 = llvm.add %157, %1 : i64
          llvm.br ^bb1(%187 : i64)
        ^bb6:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %120 = llvm.call @getTime() : () -> f64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.zero : !llvm.ptr
    %124 = llvm.getelementptr %123[%121] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %125 = llvm.ptrtoint %124 : !llvm.ptr to i64
    %126 = llvm.call @malloc(%125) : (i64) -> !llvm.ptr
    %127 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %128 = llvm.insertvalue %126, %127[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.insertvalue %126, %128[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.insertvalue %130, %129[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.insertvalue %121, %131[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.insertvalue %122, %132[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.extractvalue %133[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.getelementptr %134[%2] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %135 : f64, !llvm.ptr
    llvm.br ^bb19(%2 : i64)
  ^bb19(%136: i64):  // 2 preds: ^bb18, ^bb23
    %137 = llvm.icmp "slt" %136, %0 : i64
    llvm.cond_br %137, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%2 : i64)
  ^bb21(%138: i64):  // 2 preds: ^bb20, ^bb22
    %139 = llvm.icmp "slt" %138, %0 : i64
    llvm.cond_br %139, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %140 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %141 = llvm.mlir.constant(4086 : index) : i64
    %142 = llvm.mul %136, %141 : i64
    %143 = llvm.add %142, %138 : i64
    %144 = llvm.getelementptr %140[%143] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %145 = llvm.load %144 : !llvm.ptr -> f64
    %146 = llvm.extractvalue %133[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %147 = llvm.getelementptr %146[%2] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %148 = llvm.load %147 : !llvm.ptr -> f64
    %149 = llvm.fadd %145, %148  : f64
    %150 = llvm.extractvalue %133[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %151 = llvm.getelementptr %150[%2] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %149, %151 : f64, !llvm.ptr
    %152 = llvm.add %138, %1 : i64
    llvm.br ^bb21(%152 : i64)
  ^bb23:  // pred: ^bb21
    %153 = llvm.add %136, %1 : i64
    llvm.br ^bb19(%153 : i64)
  ^bb24:  // pred: ^bb19
    %154 = llvm.extractvalue %133[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.getelementptr %154[%2] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %156 = llvm.load %155 : !llvm.ptr -> f64
    llvm.call @printF64(%156) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%119, %120) : (f64, f64) -> ()
    llvm.return
  }
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func @printElapsedTime(f64, f64) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}
