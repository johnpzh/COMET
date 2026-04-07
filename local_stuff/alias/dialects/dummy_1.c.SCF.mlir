module {

    
func.func @dummy_1() {
    %c10 = arith.constant 10 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c9_i32 = arith.constant 9 : i32
    %alloca = memref.alloca()  {test.ptr = "alloca"} : memref<10xi8>
    %alloca_0 = memref.alloca() {test.ptr = "alloca_0"} : memref<2xi8>
    scf.for %arg0 = %c0 to %c10 step %c1 {
        %0 = arith.index_cast %arg0 : index to i32
        %1 = memref.load %alloca[%arg0] : memref<10xi8>
        %2 = affine.load %alloca_0[0] : memref<2xi8>
        %3 = arith.addi %2, %1 : i8
        affine.store %3, %alloca_0[0] {test.ptr = "store_alloca_0_0"} : memref<2xi8>
        %4 = arith.subi %c9_i32, %0 : i32
        %5 = arith.index_cast %4 : i32 to index
        %6 = memref.load %alloca[%5] : memref<10xi8>
        %7 = affine.load %alloca_0[1] : memref<2xi8>
        %8 = arith.addi %7, %6 : i8
        affine.store %8, %alloca_0[1] {test.ptr = "store_alloca_0_1"} : memref<2xi8>
    } {test.ptr = "for_loop"}
    return
}

}


// ----------------- //
// void dummy_1() {
//     int i;
//     char C[2];
//     char A[10];
//     for (int i = 0; i < 10; ++i) {
//         C[0] += A[i];          /* One byte store */
//         C[1] += A[9-i];        /* One byte store */
//     }
// }
