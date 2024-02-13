//===- WorkspaceTransforms.cpp  ------===//
//
// Copyright 2022 Battelle Memorial Institute
//
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice, this list of conditions
// and the following disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions
// and the following disclaimer in the documentation and/or other materials provided with the distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED
// WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
// PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
// GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
// WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//===----------------------------------------------------------------------===//
//
// This pass performs workspace transformations on index tree dialect for sparse-sparse computation
//===----------------------------------------------------------------------===//

#include "comet/Dialect/IndexTree/IR/IndexTreeDialect.h"
#include "comet/Dialect/IndexTree/Passes.h"
#include "comet/Dialect/TensorAlgebra/IR/TADialect.h"
#include "comet/Dialect/Utils/Utils.h"

#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Bufferization/IR/Bufferization.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"

#include "llvm/Support/Debug.h"
#include <iostream>
#include <algorithm>
#include <vector>

#include <limits>
#include <map>
#include <set>
#include <unordered_map>
#include <string>
#include <utility>
#include <queue>

using namespace mlir;
using namespace mlir::bufferization;
using namespace mlir::arith;
using namespace mlir::indexTree;
using namespace mlir::tensorAlgebra;

using llvm::SmallVector;
using llvm::StringRef;

#define DEBUG_TYPE "workspace-transformations"

// *********** For debug purpose *********//
// #define COMET_DEBUG_MODE
#include "comet/Utils/debug.h"
#undef COMET_DEBUG_MODE
// *********** For debug purpose *********//



///  Apply workspace transformation on the lhs
///  Consider CSR first
///  ikj Cij += Aik * Bkj ===> i (j Wj = 0; kj Wj += Aik * Bkj; kj Cij=Wj)
///  ij Cij = Aij * Bij =====> i (j Wj = 0; j Wj = Aij * Bij; j Cij=Wj)

///  Apply workspace transformation on the rhs
///  Consider CSR first
///  j Wj = Aij * Bij ===> j Vj = 0; j Vj = Bij; j Wj = Aij * Vj;

//===----------------------------------------------------------------------===//
/// WorkspaceTransforms Pass
//===----------------------------------------------------------------------===//

///  Apply workspace transformations on the ta.tc and tc.elews_mul
namespace
{
  struct IndexTreeWorkspaceTransformationsPass
      : public PassWrapper<IndexTreeWorkspaceTransformationsPass, OperationPass<mlir::func::FuncOp>>
  {
    MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(IndexTreeWorkspaceTransformationsPass)
    void runOnOperation() override;
  };
} /// end anonymous namespace.

struct TransformSparseOutput : public OpRewritePattern<IndexTreeComputeOp> {
  TransformSparseOutput(MLIRContext *context)
    : OpRewritePattern<IndexTreeComputeOp>(context, /*benefit=*/1) {}

  mlir::LogicalResult
  matchAndRewrite(IndexTreeComputeOp compute_op, mlir::PatternRewriter &rewriter) const override {
    IndexTreeLHSOperandOp lhs_op = op.getLhs().getDefiningOp<IndexTreeLHSOperandOp>();
    Value old_output = lhs_op.getTensor();

    // Check to see if output is sparse
    if(!llvm::isa<SparseTensorType>(old_output.getType()))
      return failure();

    // Check to see if there are "redundant" inserts
    llvm::SmallDenseMap<Value, std:pair<Value, Value>> index_vars;
    for(auto pos : lhs_op.getPos()) {
      auto index_to_tensor = pos.getDefiningOp<IndexTreeIndexToTensorOp>();
      if(index_to_tensor){
        index_vars.insert(std::make_pair(
          index_to_tensor.getIndex(),
          std::make_pair(index_to_tensor.getPos(), index_to_tensor.getCrd())
        ));
      }
    }

    // Find last output dimension
    Value parent = compute_op.getParent();
    auto node = parent.getDefiningOp<IndexTreeIndicesOp>();
    while(index_vars.find(parent) == index_vars.end()) {
      parent = node.getParent();
      node = parent.getDefiningOp<IndexTreeIndicesOp>();
    }
    // node contains output domain
    
    // Find output dimensions after reduction variable
    // to include in workspace
    llvm::SmallVector<Value> workspace_sizes;
    llvm::SmallVector<Value> pos;
    llvm::SmallVector<Value> crds;
    while(index_vars.find(parent) != index_vars.end()){
      auto pos_crd = index_vars[parent];
      ConcreteDomain domain = node.getDomain().getDefiningOp<ConcreteDomain>(); 
      workspace_sizes.push_back(domain.getDimensionSize());
      pos.push_back(pos_crd.first);
      crds.push_back(pos_crd.second);

      parent = node.getParent();
      node = parent.getDefiningOp<IndexTreeIndicesOp>();
      if(!node){
        return failure();
      }    
    }
    //Match success!

    // Declare the workspace outside of the tree
    std::reverse(workspace_sizes.begin(), workspace_sizes.end());
    std::reverse(pos);
    std::reverse(crds);
    auto tree_op = compute_op.getParentOfType<IndexTreeOp>();
    rewriter.setInsertionPoint(tree_op);
    llvm::SmallVector type_param(workspace_sizes.size(), ShapedType::kDyanmic);
    Type workspace_type = WorkspaceTensor::get(type_param);
    Value workspace = rewriter.create<TensorAllocWorkspaceOp>(op.getLoc(), workspace_type, workspace_sizes);

    // Create new compute op
    auto context = getContext();
    rewriter.setInsertionPoint(compute_op);
    Type operand_type = OperandType::get(context);
    Value new_lhs = rewriter.create<IndexTreeLHSOperandOp>(loc, operand_type, workspace, pos, crds);
    Value new_workspace = rewriter.create<IndexTreeComputeOp>(
      loc,
      workspace_type,
      compute_op.getParent(),
      new_lhs,
      compute_op.getRhs(),
      compute_op.getSemiringAttr()
    );

    Attribute noop_attr = rewriter.getStringAttr("noop_noop");
    rewriter.replaceOp<IndexTreeComputeOp>(
      loc,
      old_output.getType(),
      compute_op.getParent(),
      compute_op.getLhs(),
      new_workspace,
      noop_attr
    );

    return success();    
  }
};

void IndexTreeWorkspaceTransformationsPass::runOnOperation()
{
  comet_debug() << __FILE__ << " " << __LINE__ << " starting CompressedWorkspaceTransforms pass \n";
  mlir::RewritePatternSet workspace_transformation_patterns(&getContext());
  workspace_transformation_patterns.add<TransformSparseOutput>(&getContext());

  // Add patterns to move invariant compute ops out of a loop and infer new variables
  indexTree::populateLoopInvariantCodeMotionPatterns(&getContext(), code_motion_patterns);
  indexTree::populateDomainInferencePatterns(&getContext(), code_motion_patterns);
  indexTree::populateDomainConcretizationPatterns(&getContext(), code_motion_patterns);

  mlir::applyPatternsAndFoldGreedily(getOperation(), std::move(workspace_transformation_patterns));
  comet_debug() << __FILE__ << " " << __LINE__ << " ending CompressedWorkspaceTransforms pass \n";
}

/// Apply the compressed workspace transformations on the index tree IR
std::unique_ptr<Pass> mlir::comet::createIndexTreeWorkspaceTransformationsPass()
{
  return std::make_unique<IndexTreeWorkspaceTransformationsPass>();
}