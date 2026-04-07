module {
  func.func @dummy_6(%arg0: memref<?xi8>, %arg1: memref<?xi8>) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i8 = arith.constant 0 : i8
    %c2 = arith.constant 2 : index
    %0 = "polygeist.subindex"(%arg0, %c2) : (memref<?xi8>, index) -> memref<?xi8>
    affine.store %c0_i8, %arg0[2] : memref<?xi8>
    return %0 : memref<?xi8>
  }
}
