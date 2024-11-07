#loop_annotation = #llvm.loop_annotation<mustProgress = true>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<f128, dense<128> : vector<2xi64>>, #dlti.dl_entry<i64, dense<64> : vector<2xi64>>, #dlti.dl_entry<i32, dense<32> : vector<2xi64>>, #dlti.dl_entry<i16, dense<16> : vector<2xi64>>, #dlti.dl_entry<f16, dense<16> : vector<2xi64>>, #dlti.dl_entry<f64, dense<64> : vector<2xi64>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi64>>, #dlti.dl_entry<i1, dense<8> : vector<2xi64>>, #dlti.dl_entry<i8, dense<8> : vector<2xi64>>, #dlti.dl_entry<i128, dense<128> : vector<2xi64>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i64>>} {
  llvm.mlir.global private unnamed_addr constant @".str"(dense<0> : tensor<1xi8>) {addr_space = 0 : i32, alignment = 1 : i64, dso_local} : !llvm.array<1 x i8>
  llvm.mlir.global external @__stderrp() {addr_space = 0 : i32, alignment = 8 : i64} : !llvm.ptr
  llvm.mlir.global private unnamed_addr constant @".str.1"("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.2"("begin dump: %s\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.3"("C\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.4"("\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.5"("%0.2lf \00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.6"("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.7"("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.func @main(%arg0: i32 {llvm.noundef}, %arg1: !llvm.ptr {llvm.noundef}) -> i32 attributes {frame_pointer = #llvm.framePointerKind<"non-leaf">, passthrough = ["noinline", "nounwind", "optnone", "ssp", ["uwtable", "1"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["probe-stack", "__chkstk_darwin"], ["stack-protector-buffer-size", "8"], ["target-cpu", "apple-m1"]], target_features = #llvm.target_features<["+aes", "+crc", "+crypto", "+dotprod", "+fp-armv8", "+fp16fml", "+fullfp16", "+lse", "+neon", "+ras", "+rcpc", "+rdm", "+sha2", "+sha3", "+sm4", "+v8.1a", "+v8.2a", "+v8.3a", "+v8.4a", "+v8.5a", "+v8a", "+zcm", "+zcz"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(1000 : i32) : i32
    %3 = llvm.mlir.constant(1100 : i32) : i32
    %4 = llvm.mlir.constant(1200 : i32) : i32
    %5 = llvm.mlir.constant(1100000 : i64) : i64
    %6 = llvm.mlir.constant(8 : i32) : i32
    %7 = llvm.mlir.constant(1200000 : i64) : i64
    %8 = llvm.mlir.constant(1320000 : i64) : i64
    %9 = llvm.mlir.constant(0 : i64) : i64
    %10 = llvm.mlir.constant(42 : i32) : i32
    %11 = llvm.mlir.constant(0 : i8) : i8
    %12 = llvm.mlir.constant(dense<0> : tensor<1xi8>) : !llvm.array<1 x i8>
    %13 = llvm.mlir.addressof @".str" : !llvm.ptr
    %14 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %23 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %24 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %1, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg0, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %16 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %2, %17 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %3, %18 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %4, %19 {alignment = 4 : i64} : i32, !llvm.ptr
    %25 = llvm.call @polybench_alloc_data(%5, %6) : (i64, i32) -> !llvm.ptr
    llvm.store %25, %22 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %26 = llvm.call @polybench_alloc_data(%7, %6) : (i64, i32) -> !llvm.ptr
    llvm.store %26, %23 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %27 = llvm.call @polybench_alloc_data(%8, %6) : (i64, i32) -> !llvm.ptr
    llvm.store %27, %24 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %28 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %29 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %30 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %31 = llvm.load %22 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %32 = llvm.getelementptr inbounds %31[%9, %9] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<1000 x array<1100 x f64>>
    %33 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %34 = llvm.getelementptr inbounds %33[%9, %9] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<1000 x array<1200 x f64>>
    %35 = llvm.load %24 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %36 = llvm.getelementptr inbounds %35[%9, %9] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<1200 x array<1100 x f64>>
    llvm.call @init_array(%28, %29, %30, %20, %21, %32, %34, %36) : (i32, i32, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    %37 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %38 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %39 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %40 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> f64
    %41 = llvm.load %21 {alignment = 8 : i64} : !llvm.ptr -> f64
    %42 = llvm.load %22 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %43 = llvm.getelementptr inbounds %42[%9, %9] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<1000 x array<1100 x f64>>
    %44 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %45 = llvm.getelementptr inbounds %44[%9, %9] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<1000 x array<1200 x f64>>
    %46 = llvm.load %24 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %47 = llvm.getelementptr inbounds %46[%9, %9] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<1200 x array<1100 x f64>>
    llvm.call @kernel_gemm(%37, %38, %39, %40, %41, %43, %45, %47) : (i32, i32, i32, f64, f64, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    %48 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %49 = llvm.icmp "sgt" %48, %10 : i32
    llvm.cond_br %49, ^bb1, ^bb3
  ^bb1:  // pred: ^bb0
    %50 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %51 = llvm.getelementptr inbounds %50[%9] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %52 = llvm.load %51 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %53 = llvm.call @strcmp(%52, %13) : (!llvm.ptr, !llvm.ptr) -> i32
    %54 = llvm.icmp "ne" %53, %1 : i32
    llvm.cond_br %54, ^bb3, ^bb2
  ^bb2:  // pred: ^bb1
    %55 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %56 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %57 = llvm.load %22 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %58 = llvm.getelementptr inbounds %57[%9, %9] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<1000 x array<1100 x f64>>
    llvm.call @print_array(%55, %56, %58) : (i32, i32, !llvm.ptr) -> ()
    llvm.br ^bb3
  ^bb3:  // 3 preds: ^bb0, ^bb1, ^bb2
    %59 = llvm.load %22 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%59) : (!llvm.ptr) -> ()
    %60 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%60) : (!llvm.ptr) -> ()
    %61 = llvm.load %24 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%61) : (!llvm.ptr) -> ()
    llvm.return %1 : i32
  }
  llvm.func @polybench_alloc_data(i64 {llvm.noundef}, i32 {llvm.noundef}) -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<"non-leaf">, passthrough = [["no-trapping-math", "true"], ["probe-stack", "__chkstk_darwin"], ["stack-protector-buffer-size", "8"], ["target-cpu", "apple-m1"]], target_features = #llvm.target_features<["+aes", "+crc", "+crypto", "+dotprod", "+fp-armv8", "+fp16fml", "+fullfp16", "+lse", "+neon", "+ras", "+rcpc", "+rdm", "+sha2", "+sha3", "+sm4", "+v8.1a", "+v8.2a", "+v8.3a", "+v8.4a", "+v8.5a", "+v8a", "+zcm", "+zcz"]>}
  llvm.func internal @init_array(%arg0: i32 {llvm.noundef}, %arg1: i32 {llvm.noundef}, %arg2: i32 {llvm.noundef}, %arg3: !llvm.ptr {llvm.noundef}, %arg4: !llvm.ptr {llvm.noundef}, %arg5: !llvm.ptr {llvm.noundef}, %arg6: !llvm.ptr {llvm.noundef}, %arg7: !llvm.ptr {llvm.noundef}) attributes {dso_local, frame_pointer = #llvm.framePointerKind<"non-leaf">, passthrough = ["noinline", "nounwind", "optnone", "ssp", ["uwtable", "1"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["probe-stack", "__chkstk_darwin"], ["stack-protector-buffer-size", "8"], ["target-cpu", "apple-m1"]], target_features = #llvm.target_features<["+aes", "+crc", "+crypto", "+dotprod", "+fp-armv8", "+fp16fml", "+fullfp16", "+lse", "+neon", "+ras", "+rcpc", "+rdm", "+sha2", "+sha3", "+sm4", "+v8.1a", "+v8.2a", "+v8.3a", "+v8.4a", "+v8.5a", "+v8a", "+zcm", "+zcz"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(1.500000e+00 : f64) : f64
    %2 = llvm.mlir.constant(1.200000e+00 : f64) : f64
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(2 : i32) : i32
    %5 = llvm.mlir.constant(0 : i64) : i64
    %6 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %6 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %7 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg2, %8 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg3, %9 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg4, %10 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg5, %11 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg6, %12 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg7, %13 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %16 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %1, %16 {alignment = 8 : i64} : f64, !llvm.ptr
    %17 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %2, %17 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.store %3, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb7
    %18 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %19 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %20 = llvm.icmp "slt" %18, %19 : i32
    llvm.cond_br %20, ^bb2, ^bb8
  ^bb2:  // pred: ^bb1
    llvm.store %3, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb5
    %21 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %22 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> i32
    %23 = llvm.icmp "slt" %21, %22 : i32
    llvm.cond_br %23, ^bb4, ^bb6
  ^bb4:  // pred: ^bb3
    %24 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %25 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %26 = llvm.mul %24, %25 overflow<nsw>  : i32
    %27 = llvm.add %26, %0 overflow<nsw>  : i32
    %28 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %29 = llvm.srem %27, %28  : i32
    %30 = llvm.sitofp %29 : i32 to f64
    %31 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %32 = llvm.sitofp %31 : i32 to f64
    %33 = llvm.fdiv %30, %32  : f64
    %34 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %35 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %36 = llvm.sext %35 : i32 to i64
    %37 = llvm.getelementptr inbounds %34[%36] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1100 x f64>
    %38 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %39 = llvm.sext %38 : i32 to i64
    %40 = llvm.getelementptr inbounds %37[%5, %39] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<1100 x f64>
    llvm.store %33, %40 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.br ^bb5
  ^bb5:  // pred: ^bb4
    %41 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %42 = llvm.add %41, %0 overflow<nsw>  : i32
    llvm.store %42, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb6:  // pred: ^bb3
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %43 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %44 = llvm.add %43, %0 overflow<nsw>  : i32
    llvm.store %44, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb8:  // pred: ^bb1
    llvm.store %3, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9
  ^bb9:  // 2 preds: ^bb8, ^bb15
    %45 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %46 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %47 = llvm.icmp "slt" %45, %46 : i32
    llvm.cond_br %47, ^bb10, ^bb16
  ^bb10:  // pred: ^bb9
    llvm.store %3, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb11
  ^bb11:  // 2 preds: ^bb10, ^bb13
    %48 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %49 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %50 = llvm.icmp "slt" %48, %49 : i32
    llvm.cond_br %50, ^bb12, ^bb14
  ^bb12:  // pred: ^bb11
    %51 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %52 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %53 = llvm.add %52, %0 overflow<nsw>  : i32
    %54 = llvm.mul %51, %53 overflow<nsw>  : i32
    %55 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %56 = llvm.srem %54, %55  : i32
    %57 = llvm.sitofp %56 : i32 to f64
    %58 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %59 = llvm.sitofp %58 : i32 to f64
    %60 = llvm.fdiv %57, %59  : f64
    %61 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %62 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %63 = llvm.sext %62 : i32 to i64
    %64 = llvm.getelementptr inbounds %61[%63] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1200 x f64>
    %65 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %66 = llvm.sext %65 : i32 to i64
    %67 = llvm.getelementptr inbounds %64[%5, %66] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<1200 x f64>
    llvm.store %60, %67 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.br ^bb13
  ^bb13:  // pred: ^bb12
    %68 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %69 = llvm.add %68, %0 overflow<nsw>  : i32
    llvm.store %69, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb11 {loop_annotation = #loop_annotation}
  ^bb14:  // pred: ^bb11
    llvm.br ^bb15
  ^bb15:  // pred: ^bb14
    %70 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %71 = llvm.add %70, %0 overflow<nsw>  : i32
    llvm.store %71, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9 {loop_annotation = #loop_annotation}
  ^bb16:  // pred: ^bb9
    llvm.store %3, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb17
  ^bb17:  // 2 preds: ^bb16, ^bb23
    %72 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %73 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %74 = llvm.icmp "slt" %72, %73 : i32
    llvm.cond_br %74, ^bb18, ^bb24
  ^bb18:  // pred: ^bb17
    llvm.store %3, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb19
  ^bb19:  // 2 preds: ^bb18, ^bb21
    %75 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %76 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> i32
    %77 = llvm.icmp "slt" %75, %76 : i32
    llvm.cond_br %77, ^bb20, ^bb22
  ^bb20:  // pred: ^bb19
    %78 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %79 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %80 = llvm.add %79, %4 overflow<nsw>  : i32
    %81 = llvm.mul %78, %80 overflow<nsw>  : i32
    %82 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> i32
    %83 = llvm.srem %81, %82  : i32
    %84 = llvm.sitofp %83 : i32 to f64
    %85 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> i32
    %86 = llvm.sitofp %85 : i32 to f64
    %87 = llvm.fdiv %84, %86  : f64
    %88 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %89 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %90 = llvm.sext %89 : i32 to i64
    %91 = llvm.getelementptr inbounds %88[%90] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1100 x f64>
    %92 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %93 = llvm.sext %92 : i32 to i64
    %94 = llvm.getelementptr inbounds %91[%5, %93] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<1100 x f64>
    llvm.store %87, %94 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.br ^bb21
  ^bb21:  // pred: ^bb20
    %95 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %96 = llvm.add %95, %0 overflow<nsw>  : i32
    llvm.store %96, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb19 {loop_annotation = #loop_annotation}
  ^bb22:  // pred: ^bb19
    llvm.br ^bb23
  ^bb23:  // pred: ^bb22
    %97 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %98 = llvm.add %97, %0 overflow<nsw>  : i32
    llvm.store %98, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb17 {loop_annotation = #loop_annotation}
  ^bb24:  // pred: ^bb17
    llvm.return
  }
  llvm.func internal @kernel_gemm(%arg0: i32 {llvm.noundef}, %arg1: i32 {llvm.noundef}, %arg2: i32 {llvm.noundef}, %arg3: f64 {llvm.noundef}, %arg4: f64 {llvm.noundef}, %arg5: !llvm.ptr {llvm.noundef}, %arg6: !llvm.ptr {llvm.noundef}, %arg7: !llvm.ptr {llvm.noundef}) attributes {dso_local, frame_pointer = #llvm.framePointerKind<"non-leaf">, passthrough = ["noinline", "nounwind", "optnone", "ssp", ["uwtable", "1"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["probe-stack", "__chkstk_darwin"], ["stack-protector-buffer-size", "8"], ["target-cpu", "apple-m1"]], target_features = #llvm.target_features<["+aes", "+crc", "+crypto", "+dotprod", "+fp-armv8", "+fp16fml", "+fullfp16", "+lse", "+neon", "+ras", "+rcpc", "+rdm", "+sha2", "+sha3", "+sm4", "+v8.1a", "+v8.2a", "+v8.3a", "+v8.4a", "+v8.5a", "+v8a", "+zcm", "+zcz"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %3 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %4 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg2, %5 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg3, %6 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.store %arg4, %7 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.store %arg5, %8 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg6, %9 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg7, %10 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %1, %11 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb15
    %14 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %15 = llvm.load %3 {alignment = 4 : i64} : !llvm.ptr -> i32
    %16 = llvm.icmp "slt" %14, %15 : i32
    llvm.cond_br %16, ^bb2, ^bb16
  ^bb2:  // pred: ^bb1
    llvm.store %1, %12 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb5
    %17 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %18 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %19 = llvm.icmp "slt" %17, %18 : i32
    llvm.cond_br %19, ^bb4, ^bb6
  ^bb4:  // pred: ^bb3
    %20 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> f64
    %21 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %22 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %23 = llvm.sext %22 : i32 to i64
    %24 = llvm.getelementptr inbounds %21[%23] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1100 x f64>
    %25 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %26 = llvm.sext %25 : i32 to i64
    %27 = llvm.getelementptr inbounds %24[%2, %26] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<1100 x f64>
    %28 = llvm.load %27 {alignment = 8 : i64} : !llvm.ptr -> f64
    %29 = llvm.fmul %28, %20  : f64
    llvm.store %29, %27 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.br ^bb5
  ^bb5:  // pred: ^bb4
    %30 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %31 = llvm.add %30, %0 overflow<nsw>  : i32
    llvm.store %31, %12 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb6:  // pred: ^bb3
    llvm.store %1, %13 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb6, ^bb13
    %32 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %33 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    %34 = llvm.icmp "slt" %32, %33 : i32
    llvm.cond_br %34, ^bb8, ^bb14
  ^bb8:  // pred: ^bb7
    llvm.store %1, %12 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9
  ^bb9:  // 2 preds: ^bb8, ^bb11
    %35 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %36 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %37 = llvm.icmp "slt" %35, %36 : i32
    llvm.cond_br %37, ^bb10, ^bb12
  ^bb10:  // pred: ^bb9
    %38 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> f64
    %39 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %40 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %41 = llvm.sext %40 : i32 to i64
    %42 = llvm.getelementptr inbounds %39[%41] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1200 x f64>
    %43 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %44 = llvm.sext %43 : i32 to i64
    %45 = llvm.getelementptr inbounds %42[%2, %44] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<1200 x f64>
    %46 = llvm.load %45 {alignment = 8 : i64} : !llvm.ptr -> f64
    %47 = llvm.fmul %38, %46  : f64
    %48 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %49 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %50 = llvm.sext %49 : i32 to i64
    %51 = llvm.getelementptr inbounds %48[%50] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1100 x f64>
    %52 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %53 = llvm.sext %52 : i32 to i64
    %54 = llvm.getelementptr inbounds %51[%2, %53] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<1100 x f64>
    %55 = llvm.load %54 {alignment = 8 : i64} : !llvm.ptr -> f64
    %56 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %57 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %58 = llvm.sext %57 : i32 to i64
    %59 = llvm.getelementptr inbounds %56[%58] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1100 x f64>
    %60 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %61 = llvm.sext %60 : i32 to i64
    %62 = llvm.getelementptr inbounds %59[%2, %61] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<1100 x f64>
    %63 = llvm.load %62 {alignment = 8 : i64} : !llvm.ptr -> f64
    %64 = llvm.intr.fmuladd(%47, %55, %63)  : (f64, f64, f64) -> f64
    llvm.store %64, %62 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.br ^bb11
  ^bb11:  // pred: ^bb10
    %65 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %66 = llvm.add %65, %0 overflow<nsw>  : i32
    llvm.store %66, %12 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9 {loop_annotation = #loop_annotation}
  ^bb12:  // pred: ^bb9
    llvm.br ^bb13
  ^bb13:  // pred: ^bb12
    %67 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %68 = llvm.add %67, %0 overflow<nsw>  : i32
    llvm.store %68, %13 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb7 {loop_annotation = #loop_annotation}
  ^bb14:  // pred: ^bb7
    llvm.br ^bb15
  ^bb15:  // pred: ^bb14
    %69 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %70 = llvm.add %69, %0 overflow<nsw>  : i32
    llvm.store %70, %11 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb16:  // pred: ^bb1
    llvm.return
  }
  llvm.func @strcmp(!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) -> i32 attributes {frame_pointer = #llvm.framePointerKind<"non-leaf">, passthrough = [["no-trapping-math", "true"], ["probe-stack", "__chkstk_darwin"], ["stack-protector-buffer-size", "8"], ["target-cpu", "apple-m1"]], target_features = #llvm.target_features<["+aes", "+crc", "+crypto", "+dotprod", "+fp-armv8", "+fp16fml", "+fullfp16", "+lse", "+neon", "+ras", "+rcpc", "+rdm", "+sha2", "+sha3", "+sm4", "+v8.1a", "+v8.2a", "+v8.3a", "+v8.4a", "+v8.5a", "+v8a", "+zcm", "+zcz"]>}
  llvm.func internal @print_array(%arg0: i32 {llvm.noundef}, %arg1: i32 {llvm.noundef}, %arg2: !llvm.ptr {llvm.noundef}) attributes {dso_local, frame_pointer = #llvm.framePointerKind<"non-leaf">, passthrough = ["noinline", "nounwind", "optnone", "ssp", ["uwtable", "1"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["probe-stack", "__chkstk_darwin"], ["stack-protector-buffer-size", "8"], ["target-cpu", "apple-m1"]], target_features = #llvm.target_features<["+aes", "+crc", "+crypto", "+dotprod", "+fp-armv8", "+fp16fml", "+fullfp16", "+lse", "+neon", "+ras", "+rcpc", "+rdm", "+sha2", "+sha3", "+sm4", "+v8.1a", "+v8.2a", "+v8.3a", "+v8.4a", "+v8.5a", "+v8a", "+zcm", "+zcz"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.addressof @__stderrp : !llvm.ptr
    %2 = llvm.mlir.constant("==BEGIN DUMP_ARRAYS==\0A\00") : !llvm.array<23 x i8>
    %3 = llvm.mlir.addressof @".str.1" : !llvm.ptr
    %4 = llvm.mlir.constant("begin dump: %s\00") : !llvm.array<15 x i8>
    %5 = llvm.mlir.addressof @".str.2" : !llvm.ptr
    %6 = llvm.mlir.constant("C\00") : !llvm.array<2 x i8>
    %7 = llvm.mlir.addressof @".str.3" : !llvm.ptr
    %8 = llvm.mlir.constant(0 : i32) : i32
    %9 = llvm.mlir.constant("\0Aend   dump: %s\0A\00") : !llvm.array<17 x i8>
    %10 = llvm.mlir.addressof @".str.6" : !llvm.ptr
    %11 = llvm.mlir.constant("==END   DUMP_ARRAYS==\0A\00") : !llvm.array<23 x i8>
    %12 = llvm.mlir.addressof @".str.7" : !llvm.ptr
    %13 = llvm.mlir.constant(20 : i32) : i32
    %14 = llvm.mlir.constant("\0A\00") : !llvm.array<2 x i8>
    %15 = llvm.mlir.addressof @".str.4" : !llvm.ptr
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.mlir.constant("%0.2lf \00") : !llvm.array<8 x i8>
    %18 = llvm.mlir.addressof @".str.5" : !llvm.ptr
    %19 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %23 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %19 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %20 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg2, %21 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %24 = llvm.load %1 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %25 = llvm.call @fprintf(%24, %3) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    %26 = llvm.load %1 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %27 = llvm.call @fprintf(%26, %5, %7) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    llvm.store %8, %22 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb9
    %28 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %29 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %30 = llvm.icmp "slt" %28, %29 : i32
    llvm.cond_br %30, ^bb2, ^bb10
  ^bb2:  // pred: ^bb1
    llvm.store %8, %23 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb7
    %31 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %32 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %33 = llvm.icmp "slt" %31, %32 : i32
    llvm.cond_br %33, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %34 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %35 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %36 = llvm.mul %34, %35 overflow<nsw>  : i32
    %37 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %38 = llvm.add %36, %37 overflow<nsw>  : i32
    %39 = llvm.srem %38, %13  : i32
    %40 = llvm.icmp "eq" %39, %8 : i32
    llvm.cond_br %40, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %41 = llvm.load %1 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %42 = llvm.call @fprintf(%41, %15) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    %43 = llvm.load %1 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %44 = llvm.load %21 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %45 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %46 = llvm.sext %45 : i32 to i64
    %47 = llvm.getelementptr inbounds %44[%46] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1100 x f64>
    %48 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %49 = llvm.sext %48 : i32 to i64
    %50 = llvm.getelementptr inbounds %47[%16, %49] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<1100 x f64>
    %51 = llvm.load %50 {alignment = 8 : i64} : !llvm.ptr -> f64
    %52 = llvm.call @fprintf(%43, %18, %51) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %53 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    %54 = llvm.add %53, %0 overflow<nsw>  : i32
    llvm.store %54, %23 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb8:  // pred: ^bb3
    llvm.br ^bb9
  ^bb9:  // pred: ^bb8
    %55 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %56 = llvm.add %55, %0 overflow<nsw>  : i32
    llvm.store %56, %22 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb10:  // pred: ^bb1
    %57 = llvm.load %1 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %58 = llvm.call @fprintf(%57, %10, %7) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %59 = llvm.load %1 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %60 = llvm.call @fprintf(%59, %12) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    llvm.return
  }
  llvm.func @free(!llvm.ptr {llvm.noundef}) attributes {frame_pointer = #llvm.framePointerKind<"non-leaf">, passthrough = [["no-trapping-math", "true"], ["probe-stack", "__chkstk_darwin"], ["stack-protector-buffer-size", "8"], ["target-cpu", "apple-m1"]], target_features = #llvm.target_features<["+aes", "+crc", "+crypto", "+dotprod", "+fp-armv8", "+fp16fml", "+fullfp16", "+lse", "+neon", "+ras", "+rcpc", "+rdm", "+sha2", "+sha3", "+sm4", "+v8.1a", "+v8.2a", "+v8.3a", "+v8.4a", "+v8.5a", "+v8a", "+zcm", "+zcz"]>}
  llvm.func @fprintf(!llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, ...) -> i32 attributes {frame_pointer = #llvm.framePointerKind<"non-leaf">, passthrough = [["no-trapping-math", "true"], ["probe-stack", "__chkstk_darwin"], ["stack-protector-buffer-size", "8"], ["target-cpu", "apple-m1"]], target_features = #llvm.target_features<["+aes", "+crc", "+crypto", "+dotprod", "+fp-armv8", "+fp16fml", "+fullfp16", "+lse", "+neon", "+ras", "+rcpc", "+rdm", "+sha2", "+sha3", "+sm4", "+v8.1a", "+v8.2a", "+v8.3a", "+v8.4a", "+v8.5a", "+v8a", "+zcm", "+zcz"]>}
}
