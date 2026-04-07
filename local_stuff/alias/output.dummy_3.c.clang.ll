; ModuleID = 'c_code/dummy_3.c'
source_filename = "c_code/dummy_3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @dummy_3(ptr noundef %A) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %C = alloca ptr, align 8
  store ptr %A, ptr %A.addr, align 8
  %0 = load ptr, ptr %A.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 2
  store ptr %add.ptr, ptr %C, align 8
  %1 = load ptr, ptr %C, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  store i8 0, ptr %arrayidx, align 1
  %2 = load ptr, ptr %C, align 8
  ret ptr %2
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"clang version 18.0.0git (https://github.com/llvm/llvm-project f22cde10e7cc711bba9f43d7529ea6c1394c5b48)"}
