module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi64>>, #dlti.dl_entry<i128, dense<128> : vector<2xi64>>, #dlti.dl_entry<i8, dense<8> : vector<2xi64>>, #dlti.dl_entry<i16, dense<16> : vector<2xi64>>, #dlti.dl_entry<i1, dense<8> : vector<2xi64>>, #dlti.dl_entry<f16, dense<16> : vector<2xi64>>, #dlti.dl_entry<f128, dense<128> : vector<2xi64>>, #dlti.dl_entry<f64, dense<64> : vector<2xi64>>, #dlti.dl_entry<i32, dense<32> : vector<2xi64>>, #dlti.dl_entry<i64, dense<64> : vector<2xi64>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i64>, #dlti.dl_entry<"dlti.endianness", "little">>} {
  llvm.func @dummy_3(%arg0: !llvm.ptr {llvm.noundef}) -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<"non-leaf">, passthrough = ["noinline", "nounwind", "optnone", "ssp", ["uwtable", "1"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "apple-m1"]], target_features = #llvm.target_features<["+aes", "+crc", "+dotprod", "+fp-armv8", "+fp16fml", "+fullfp16", "+lse", "+neon", "+ras", "+rcpc", "+rdm", "+sha2", "+sha3", "+v8.1a", "+v8.2a", "+v8.3a", "+v8.4a", "+v8.5a", "+v8a", "+zcm", "+zcz"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(2 : i64) : i64
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.mlir.constant(0 : i8) : i8
    %4 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %4 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %7 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %8 = llvm.getelementptr inbounds %7[%1] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %8, %6 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %9 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %10 = llvm.getelementptr inbounds %9[%2] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %3, %10 {alignment = 1 : i64} : i8, !llvm.ptr
    %11 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.return %11 : !llvm.ptr
  }
}
