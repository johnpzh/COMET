module {

func.func @dummy_2() {
    %c10 = arith.constant 10 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c9_i32 = arith.constant 9 : i32
    %alloca = memref.alloca() {test.ptr = "alloca"} : memref<10xi8>
    %alloca_0 = memref.alloca() {test.ptr = "alloca_0"} : memref<2xi8>
    /// Polygeist has some bugs about !llvm.ptr lowering
    // %0 = "polygeist.memref2pointer"(%alloca_0) : (memref<2xi8>) -> !llvm.ptr<i16>
    %0 = "polygeist.memref2pointer"(%alloca_0) {test.ptr = "v_0"} : (memref<2xi8>) -> !llvm.ptr
    scf.for %arg0 = %c0 to %c10 step %c1 {
        %1 = arith.index_cast %arg0 : index to i32
        %2 = memref.load %alloca[%arg0] : memref<10xi8>
        %3 = arith.extsi %2 : i8 to i32
        // %4 = llvm.load %0 : !llvm.ptr<i16>
        %4 = llvm.load %0 : !llvm.ptr -> i16
        %5 = arith.trunci %3 : i32 to i16
        %6 = arith.addi %4, %5 : i16
        // llvm.store %6, %0 : !llvm.ptr<i16>
        llvm.store %6, %0  {test.ptr = "store_0"} : i16, !llvm.ptr
        %7 = arith.subi %c9_i32, %1 : i32
        %8 = arith.index_cast %7 : i32 to index
        %9 = memref.load %alloca[%8] : memref<10xi8>
        affine.store %9, %alloca_0[1] {test.ptr = "alloca_0_1"} : memref<2xi8>
    }
    return
}

}

// ----------------- //
// void dummy_2() {
//     int i;
//     char C[2];
//     char A[10];
//     for (i = 0; i < 10; ++i) {
//         ((short *) C)[0] += A[i];  /* Two byte store! */
//         C[1] = A[9-i];          /* One byte store */
//     }
// }