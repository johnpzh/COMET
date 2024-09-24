// lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp

/// create all the passes.
std::unique_ptr<Pass> mlir::comet::createLowerTensorAlgebraToIndexTreePass()
{
  comet_debug() << " Calling createLowerTensorAlgebraToIndexTreePass\n";
  return std::make_unique<LowerTensorAlgebraToIndexTreePass>();
}

void LowerTensorAlgebraToIndexTreePass::runOnOperation()
{
      if (isa<TensorMultOp>(&op))
      {
        doTensorMultOp(cast<TensorMultOp>(&op), tree);
        formIndexTreeDialect = true;
      }
}


///
/// Algorithm: check if the operation is one of {MM, MV, SpMM, SpMV}
/// Operation: C = op(A, B)
bool is_chosen_kernel(Tensor A,
                      Tensor B,
                      Tensor C) {
  if (A.order == 2) {
    if (B.order == 2 && C.order == 2) {
      if (A.iterator[1] == B.iterator[0] && A.iterator[0] == C.iterator[0] && B.iterator[1] == C.iterator[1]) {
        /// This is MM or SpMM
        return true;
      }
    } else if (B.order == 1 && C.order == 1) {
      if (A.iterator[1] == B.iterator[0] && A.iterator[0] == C.iterator[0]) {
        /// This is Mv or SpMV
        return true;
      }
    }
  }

  return false;
}