
// /Users/peng599/pppp/comet-openmp-dialect/COMET-openmp/llvm/mlir/test/lib/Analysis/TestAliasAnalysis.cpp

struct TestAliasAnalysisPass
    : public test::TestAliasAnalysisBase,
      PassWrapper<TestAliasAnalysisPass, OperationPass<>> {
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(TestAliasAnalysisPass)

  StringRef getArgument() const final { return "test-alias-analysis"; }
  StringRef getDescription() const final {
    return "Test alias analysis results.";
  }
  void runOnOperation() override {
    AliasAnalysis &aliasAnalysis = getAnalysis<AliasAnalysis>();
    runAliasAnalysisOnOperation(getOperation(), aliasAnalysis);
  }
};


// /Users/peng599/pppp/comet-openmp-dialect/COMET-openmp/llvm/mlir/lib/Analysis/AliasAnalysis.cpp

AliasAnalysis::AliasAnalysis(Operation *op) {
  addAnalysisImplementation(LocalAliasAnalysis());
}


// /Users/peng599/pppp/comet-openmp-dialect/COMET-openmp/llvm/mlir/lib/Analysis/AliasAnalysis/LocalAliasAnalysis.cpp

/// Given the two values, return their aliasing behavior.
AliasResult LocalAliasAnalysis::alias(Value lhs, Value rhs) {
  if (lhs == rhs)
    return AliasResult::MustAlias;

  // Get the underlying values being addressed.
  SmallVector<Value, 8> lhsValues, rhsValues;
  collectUnderlyingAddressValues(lhs, lhsValues);
  collectUnderlyingAddressValues(rhs, rhsValues);

  // If we failed to collect for either of the values somehow, conservatively
  // assume they may alias.
  if (lhsValues.empty() || rhsValues.empty())
    return AliasResult::MayAlias;

  // Check the alias results against each of the underlying values.
  std::optional<AliasResult> result;
  for (Value lhsVal : lhsValues) {
    for (Value rhsVal : rhsValues) {
      AliasResult nextResult = aliasImpl(lhsVal, rhsVal);
      result = result ? result->merge(nextResult) : nextResult;
    }
  }

  // We should always have a valid result here.
  return *result;
}


AliasResult LocalAliasAnalysis::aliasImpl(Value lhs, Value rhs) {


  // Otherwise, neither of the values are constant so check to see if either has
  // an allocation effect.
  bool lhsHasAlloc = succeeded(getAllocEffectFor(lhs, lhsAlloc, lhsAllocScope));
  bool rhsHasAlloc = succeeded(getAllocEffectFor(rhs, rhsAlloc, rhsAllocScope));


  // If the effect has a scoped allocation region, check to see if the
  // non-effect value is defined above that scope.
  if (lhsAllocScope) {
    // If the parent operation of rhs is an ancestor of the allocation scope, or
    // if rhs is an entry block argument of the allocation scope we know the two
    // values can't alias.
    Operation *rhsParentOp = rhs.getParentRegion()->getParentOp();
    if (rhsParentOp->isProperAncestor(lhsAllocScope))
      return AliasResult::NoAlias;
    if (rhsParentOp == lhsAllocScope) {
      BlockArgument rhsArg = dyn_cast<BlockArgument>(rhs);
      if (rhsArg && rhs.getParentBlock()->isEntryBlock())
        return AliasResult::NoAlias;
    }
  }

}


/// Given a value, try to get an allocation effect attached to it. If
/// successful, `allocEffect` is populated with the effect. If an effect was
/// found, `allocScopeOp` is also specified if a parent operation of `value`
/// could be identified that bounds the scope of the allocated value; i.e. if
/// non-null it specifies the parent operation that the allocation does not
/// escape. If no scope is found, `allocScopeOp` is set to nullptr.
static LogicalResult
getAllocEffectFor(Value value,
                  std::optional<MemoryEffects::EffectInstance> &effect,
                  Operation *&allocScopeOp) {

  // Try to find an allocation effect on the resource.
  if (!(effect = interface.getEffectOnValue<MemoryEffects::Allocate>(value)))
    return failure();

  // If we found an allocation effect, try to find a scope for the allocation.
  // If the resource of this allocation is automatically scoped, find the parent
  // operation that bounds the allocation scope.
  if (llvm::isa<SideEffects::AutomaticAllocationScopeResource>(
          effect->getResource())) {
    allocScopeOp = op->getParentWithTrait<OpTrait::AutomaticAllocationScope>();
    return success();
  }

}