
void doLowering () {

    /// add function comet_sort_index();

    get wp_ops;
    get opstree_vec;

    bool is_spgemm = false;

    for (every node in wp_ops) {
        if (node is index node) {
            genForOps();
        } else if (node is compute node) {

            /// Check if it is SpGEMM
            if (!is_spgemm) {
                is_spgemm = checkSpGEMM(node);
            }

            genCmptOps(node, is_spgemm);
        }
    }

    clean up;

}


bool checkSpGEMM(node) {
    RHS_node = getRHS(node);

    RHS_formats = getFormats(RHS_node);

    RHS_dim = getDimensions(RHS_node);

    if (RHS_dim == 2 && RHS_formats are all "CSR") {
        return true;
    } else {
        return false;
    }

    /// Should also consider if it is a Elementwise Multiplication. If so, return false.
}

void genCmptOps(node, is_spgmm) {

    if (main_tensors_rhs.size() == 1) { // Generate "a = b"
        if (ConstantOp cstop = dyn_cast<ConstantOp>(main_tensors_rhs[0].getDefiningOp())) { // "a = 1.0"
            if (comp_worksp_opt) { // true attr means compressed workspace
                /// ----------------- ///
                /// Previous WS needs this, generating the 1st compute node, but this will be deprecated.
                /// Just keep it intact right now. 
                /// Pass.
                /// ----------------- ///
            } else { // initial workspace???
                /// ----------------- ///
                /// Pass.
                /// ----------------- ///
            }
        } else if (main_tensors_rhs[0].getType().isa<mlir::TensorType>()) { // Cij = Wj
            // When Cij is dense type
            if (lhs.getType().isa<mlir::TensorType>()) {
                /// ----------------- ///
                /// Pass.
                /// ----------------- ///
            }
            // Cij = Wj
            else if (lhs.getType().isa<tensorAlgebra::SparseTensorType>()) {
                if (comp_worksp_opt) { // true attr means compressed workspace
                    if (is_spgemm) {
                        /// ----------------- ///
                        /// Generate the 3rd compute node.
                        /// Might not need this one. genSymbolicPhase() will generate everything.
                        /// ----------------- ///
                        /// TODO: need reset ws_bitmap in this function.
                        genNumericGatherLoop();
                    } else {
                        /// ----------------- ///
                        /// Not SpGEMM, do codegen for Elementwise Multiplication
                        /// ----------------- ///
                        genEltwiseGatherWorkspaceToSparseOutput();
                    }
                } else {
                    /// ----------------- ///
                    /// Pass.
                    /// ----------------- ///
                }
            }
            // Vj = Bij
            else if (main_tensors_rhs[0].getType().isa<tensorAlgebra::SparseTensorType>()) {
                /// ----------------- ///
                /// Not sure why need this one.
                /// Pass.
                /// ----------------- ///
            }
        }
    } else if (main_tensors_rhs.size() == 2) { // Generate " a = b * c" binary op
        /// ----------------- ///
        /// Generate the 2rd compute node.
        /// ----------------- ///
        if (is_spgemm) {
            genSymbolicPhase();

            /// Insert a row_size before the outermost numeric for-loop
            /// Insert get row_size = C_rowptr[i_idx] at the beginning of the outermost numeric for-loop's body.
            /// Pass row_size to formSemiringLoopBody();
            insertRowSizeFromMatrixCRowptr();
        }

        formSemiringLoopBody();

    } else if (main_tensors_rhs.size() == 3) { // Generate " a<m> = b * c" binary op with masking
        /// pass the maskingInfo
        /// Generate the 2rd compute node with masking.
        masking_info.mask_type = PUSH_BASED_MASKING;
        masking_info.mask_tensor = mask_tensor;
        if (is_spgemm) {
            genSymbolicPhase(masking_info);

            
            InsertRowSizeFromMatrixCRowptr();
        }

        formSemiringLoopBody(masking_info);

    }
}

/// ----------------- ///
/// Need a SymbolicInfo struct to collect information from symbolic phase and pass it to the numeric phase.
/// ----------------- ///
struct SymbolicInfo {
    bool is_SpGEMM;
    Value output_mtx_rowptr;
    // Value alloc_mark;
    // Value alloc_mark_array;
};

void genSymbolicPhase(indexTree::IndexTreeComputeOp cur_op,
                        OpsTree *opstree,  // current node
                        std::vector<Value> &wp_ops,
                        MaskingInfo maskingInfo,
                        OpBuilder &builder,
                        Location &loc,
                        SymbolicInfo symbolicInfo /* output */) {
    /// cur_op
    /// %41 = "it.Compute"(%39, %40) {comp_worksp_opt = true, semiring = "plusxy_times"} : (tensor<*xf64>, tensor<*xf64>) -> i64
    /// col_list_size

    /// Generate the for-loops structure.
    // std::vector<scf::ForOp> symbolicForLoops;
    std::vector<OpsTree *> three_ancestors;
    // Value num_rows_alloc;
    genSymbolicForLoops(inputs,
                        three_ancestors /* output */);

    /// Generate the variable mark and the mark_array
    /// Generate the updating mark in every iteration.
    /// Generate deallocating mark_array
    Value alloc_mark;
    Value alloc_mark_array;
    genMarkAndMarkArray(three_ancestors,
                        alloc_mark /* output */,
                        alloc_mark_array /* output */);


    /// Generate the for-loop that initializes mark_array by using the mask.
    if (maskingInfo.mask_type == PUSH_BASED_MASK) {
        genInitMarkArrayUsingMask(three_ancestors,
                                    alloc_mark_array,
                                    maskingInfo
                                    );
    }


    /// Find the output matrix C's rowptr.
    Value mtxC_rowptr;
    Value mtxC_col;
    Value mtxC_val;
    findMatrixCRowptrAndCol(cur_op,
                      wp_ops,
                      mtxC_rowptr /* output */,
                      mtxC_col /* output */,
                      mtxC_val /* output */);

    /// init with masking
    /// Generate the initialization for-loop before the 2nd-level symbolic for-loop
    if (maskingInfo.maskType == PUSH_BASED_MASKING) {
        genInitMarkArrayByMaskSymbolic(three_ancestors,);
    }

    /// Symbolic kernel with masking
    /// Generate the kernel to accumulate the row size and reset . 
    genSymbolicKernel(three_ancestors,
                      maskingInfo,
                      alloc_mark,
                      alloc_mark_array,
                      mtxC_rowptr /* contents updated after call */,
                      mtxC_col /* contents updated after call */,
                      mtxC_val /* contents updated after call */);


    symbolicInfo.output_mtx_rowptr = mtxC_rowptr;
    symbolicInfo.output_mtx_col = mtxC_col;
    symbolicInfo.output_mtx_val = mtxC_val;
    // symbolicInfo.alloc_mark = alloc_mark;
    // symbolicInfo.alloc_mark_array = alloc_mark_array;
}

void genSymbolicForLoops(inputs,
                         symbolicForLoops /* output */) {

    /// ---------------- ///
    /// Set for-loop location.
    /// ---------------- ///
    /// Set Insertion Point.
    last_insertion_point = saveInsertionPoint();
    OpsTree thirdAncestor = getThirdAncestors(opstree, three_ancestors);
    assert(thirdAncestor != nullptr && "SpGEMM's compute node should have at least 3 ancestors (index nodes).")
    setInsertionPoint(thirdAncestor->forLoops[0]);

    /// ---------------- ///
    /// Get for-loop arguments.
    /// ---------------- ///
    /// cur_op
    /// %41 = "it.Compute"(%39, %40) {comp_worksp_opt = true, semiring = "plusxy_times"} : (tensor<*xf64>, tensor<*xf64>) -> i64
    /// cur_RHS
    /// %39 = "it.ComputeRHS"(%15, %30) {allFormats = [["D", "CU"], ["D", "CU"]], allPerms = [[0, 1], [1, 2]]} : (!ta.sptensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index>, !ta.sptensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index>) -> tensor<*xf64>
    /// matrix_A 
    /// %15 = ta.sptensor_construct(%10, %11, %12, %13, %14, %3, %4, %5, %6, %7, %8, %9) : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index) -> (!ta.sptensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index>)
    /// matrix_B
    /// %30 = ta.sptensor_construct(%25, %26, %27, %28, %29, %18, %19, %20, %21, %22, %23, %24) : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index) -> (!ta.sptensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index>)
    /*
    sptensor_construct(
        A1pos,  /// number of rows
        A1crd,  /// discard
        A2pos,  /// rowptr array
        A2crd,  /// col_id array
        Aval, /// data array
        A1pos_size,
        A1crd_size,
        A2pos_size,
        A2crd_size,
        Aval_size,
        dim1_size,
        dim2_size,
    )
    */
    cur_RHS = cur_op.getRHS(0);
    mtxA = cur_RHS.getOperand(0);
    mtxB = cur_RHS.getOperand(1);

    /*
    for (i = 0 to mtxA.A1pos) {
        i_plus_1 = i + 1;

        k_loc_start = mtxA.A2pos[i];
        k_loc_bound = mtxA.A2pos[i_plus_1];
        for (k_loc = k_loc_start to k_loc_bound) {
            k = mtxA.A2crd[k_loc];
            k_plus_1 = k + 1;

            j_loc_start = mtxB.A2pos[k];
            j_loc_bound = mtxB.A2pos[k_plus_1];
            for (j_loc = j_loc_start to j_loc_bound) {
                j = mtxB.A2crd[j_loc];

                /// Kernel is here
            }
        }

        /// Set mtxC.rowptr here
    }
    /// Do reduce mtxC.rowptr here
    */

    get those bounaries and generate for-loops;

    /// Restore Insertion Point
    restoreInsertionPoint(last_insertion_point);
}

void findMatrixCRowptr(indexTree::IndexTreeComputeOp &cur_op,
                       std::vector<Value> &wp_ops,
                       value &mtxC_rowptr /* output */) {
    /// cur_op
    /// %41 = "it.Compute"(%39, %40) {comp_worksp_opt = true, semiring = "plusxy_times"} : (tensor<*xf64>, tensor<*xf64>) -> i64
    /// cur_op.LHS
    /// %40 = "it.ComputeLHS"(%32, %33, %34, %35) {allFormats = [["D"]], allPerms = [[2]]} : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    /// The compute node that use %40 as its RHS
    /// %57 = "it.Compute"(%42, %56) {comp_worksp_opt = true, semiring = "plusxy_times"} : (tensor<*xf64>, tensor<*xf64>) -> i64
    /// %42 = "it.ComputeRHS"(%32, %33, %34, %35) {allFormats = [["D"]], allPerms = [[2]]} : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    /// Condition:
    /// 1. %40 is current compute node's LHS
    /// 2. %42 is another compute node's RHS
    /// 3. %40 and %42 have the same operands.

    Value cur_LHS = cur_op.getLHS();
    std::vector<Value> cur_LHS_operands;
    for (auto op : cur_LHS.getOperands()) {
        cur_LHS_operands.push_back(op);
    }

    bool found_cmp_op = false;
    indexTree::IndexTreeComputeOp cmp_op;
    for (auto op : wp_ops) {
        if (cmp_op = dyn_cast<indexTree::IndexTreeComputeOp>(op.getDefiningOp())) {
            if (cmp_op.getRHS().size() != 1) {
                continue;
            }
            Value cmp_RHS = cmp_op.getRHS()[0];
            if (cmp_RHS.getNumOperands() != cur_LHS_opperands.size()) {
                continue;
            }
            bool all_operands_same = true;
            for (auto RHS_op : cmp_RHS.getOperands()) {
                if (RHS_op is not in cur_LHS_opperands) {
                    all_operands_same = false;
                    break;
                }
            }
            if (all_operands_same) {
                found_cmp_op = true;
                break;
            }
        }
    }

    assert(found_cmp_op && "Should find the other compute node whose RHS is the same as cur_op's LHS.\n");

    Value cmp_LHS = cmp_op.getLHS();   /// cmp_LHS is output C.
    Value mtxC = cmp_LHS.getOperand(0);
    mtxC_rowptr = mtxC.A2pos;  /// C.A2pos is C' rowptr.

}

void genSymbolicKernel(std::vector<OpsTree *> &three_index_ancestors,
                       MaskingInfo maskingInfo,
                       Value &alloc_mark,
                       Value &alloc_mark_array,
                       Value &mtxC_rowptr /* contents updated after call */,
                       Value &mtxC_col /* contents updated after call */) {

    /// Store the last insertion point
    last_insertion_point = builder.saveInsertionPoint();

    /// Generate ws_col_list_size before the 1st-level for-loop.
    ///     %ws_col_list_size = memref.alloc() : memref<1xindex>
    ////    memref.store %c0, %ws_col_list_size[%c0] : memref<1xindex>
    genSymbolicKernelWSColListSize();
    
    /// consider masking for the if-condition
    /// Generate the if-condition at the end of the 3rd-level for-loop's body
    genSymbolicKernelIfCondition(maskingInfo);
    
    /// Generate assigning C_rowptr[i] = ws_col_list_size at the end of the 1st-level for-loop's body
    /// Generate resetting ws_col_list_size = 0 at the end of the 1st-level for-loop's body
    genUpdateMtxCRowptr();

    /// Generate reducing C_rowptr to get offsets from sizes.
    genReduceMtxCRowptr();

    /// Generate deallocating old C_col and C_val because they are too large.
    /// Generate allocating the new C_col and C_val using the correct size.
    reallocMtxCColAndVal();


    /// Restore insertion point
    builder.restoreInsertionPoint(last_insertion_point);
}


void formSemiringLoopBody(MaskingInfo maskingInfo) {
    if (comp_worksp_opt) {   /// workspace transformation
        if (is_spgemm) {
            /// TODO: (done) allocate the ws_bitmap and array_mask
            genAllocBitmapAndArrayMaskNumeric();

            /// if to generate initialization of mark_array based on the mask
            if (maskingInfo == "PUSH_BASED_MASKING") {
                /// TODO: (done) Initialize the mask_array for every row, passing the ws_bitmap and array_mask
                // genInitMarkArrayByMaskNumeric(nested_forops,)
                genNumericInitMarkArrayByMask(nested_forops);
            }

            /// TOD: Don't need initVariableMark() or updateVariableMark().
            // initVariableMark();
            // updateVariableMark();

            /// if (mark_array[j] == mark) 
            /// TODO: (done) need to change
            genIfStatementCondition(maskingInfo);

            /// TODO: (done) need to change
            if (!if_notAlreadySet.getThenRegion().empty()) {
                /// mark_array[j] = mark + 1;
                genIfStatementThenRegion(maskingInfo);
            }

            /// TODO: reset mask_array()
            if (maskingInfo == "PUSH_BASED_MASKING") {
                genResetMaskArray();
            }
        } else {
            /// Not SpGEMM, do codegen for Elementwise Multiplication.
            genEltwiseCmptLoopBody();
        }

    } else {   /// general dense or mixed mode computation, no need workspace transformation

    }
}

/// call comet_sort_index().
void genCallIndexSort() {

}

/// the loop is there. Needs update its boundaries and body.
void genNumericGatherLoop() {

    /// tensors_lhs_Allocs[0][0] : workspace (ws_data)
    /// tensors_lhs_Allocs[1][0] : mark_array
    ///

    /// for-loop lowerBound : 
    /// C_rowptr : symbolicInfo.mtxC_rowptr
    /// i_idx : opstree.getForOps()[0].getAccessVar()
    %rowptr_start = memref.load %C_rowptr[%i_idx];

    /// for-loop upperBound :

    genCallIndexSort();

    /// 1. Create a new sparse tensor using the new C_col and C_val
    /// 2. Create a new print of the new sparse tensor
    /// 3. Delete the old last print  
    ///   "ta.print"(%55) : (!ta.sptensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index>) -> ()
    /// ----------------- ///
    /// create new buffer. replacement = rewriter.create<bufferization::ToTensorOp>(replacement.getLoc(), replacement);
    /// create new ta.sptensor_construct()? 
    /// is type "ta.print". isa<tensorAlgebra::PrintOp>(u)
    /// ----------------- ///


        SmallVector<mlir::Type, 1> elementTypes;
        for (unsigned int i = 0; i < 2 * rank_size + 1; i++)
        {
          assert(tensorload_sizes_vec.size() > 0 && "ERROR: Please report this error to the developers!");
          comet_debug() << " " << i << " ";
          comet_vdump(tensorload_sizes_vec[i]);
          elementTypes.push_back(tensorload_sizes_vec[i].getType());
        }
        comet_debug() << "\n ";
        // [0 ... 2*rank_size, 2*rank_size+1 ... 4*rank_size+1, 4*rank_size+2 ... 5*rank_size + 1]
        // 2d+1 + 2d+1 + d => 5d+2
        for (unsigned int i = 0; i < 2 * rank_size + 1; i++)
        {
          assert(array_sizes_vec.size() > 0 && "ERROR: Please report this error to the developers!");
          comet_debug() << " " << i << " ";
          comet_vdump(array_sizes_vec[i]);
          elementTypes.push_back(array_sizes_vec[i].getType());
        }
        comet_debug() << "\n ";
        for (unsigned int i = 0; i < rank_size; i++)
        {
          assert(dimSizes.size() > 0 && "ERROR: Please report this error to the developers!");
          elementTypes.push_back(dimSizes[i].getType());
        }
        comet_debug() << "\n ";

        auto ty = tensorAlgebra::SparseTensorType::get(elementTypes);

        Value sptensor;
        if (rank_size == 2)
        {
          sptensor = rewriter.create<tensorAlgebra::SparseTensorConstructOp>(loc, ty,
                                                                             ValueRange{tensorload_sizes_vec[0], // A1pos (each dimension consists of pos and crd arrays)
                                                                                        tensorload_sizes_vec[1], // A1crd
                                                                                        tensorload_sizes_vec[2], // A2pos
                                                                                        tensorload_sizes_vec[3], // A2crd
                                                                                        tensorload_sizes_vec[4], // Aval
                                                                                        array_sizes_vec[0],      // A1pos_size (size of each pos and crd arrays)
                                                                                        array_sizes_vec[1],      // A1crd_size
                                                                                        array_sizes_vec[2],      // A2pos_size
                                                                                        array_sizes_vec[3],      // A2crd_size
                                                                                        array_sizes_vec[4],      // Aval_size (size of value array)
                                                                                        dimSizes[0],             // dim1_size(size of each dimension in sparse tensor)
                                                                                        dimSizes[1]});           // dim2_size (size of each dimension in sparse tensor)


    /// No, we cannot just replace but a new sparse tensor, because the old tensor is declared before the new operands.

    /// Or. We can just do replacing all operands of the sparse tensor
    /// %55 = ta.sptensor_construct(%45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %8, %24) : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index) -> (!ta.sptensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index>)
    /*
    1. Find %55 and all its operands.
    2. Declare bufferization.to_tensor. %48 = bufferization.to_tensor %alloc_104 : memref<?xindex>
       It is for mtxC_rowptr and mtxC_crd.
    3. Replace all operands of %55 (?) by replacing the A2pos (mtxC_rowptr) and A2crd (mtxC_crd)
       a. Use replaceAllUsesWith(ValueRange{});
    4. 
    */

    /// Or. We can just replacing the %47 and %48 that are the operands of %55.
    /*
    1. Find %55.
    2. Declare bufferization.to_tensor for new C_rowptr and C_col.
    3. Replace %55's operands.
       a. Use Operation::setOperand(idx, value);
    */

         replacement = rewriter.create<bufferization::ToTensorOp>(
          replacement.getLoc(), replacement);

}

/// The mask_tensor
/// %44 = ta.sptensor_construct(%39, %40, %41, %42, %43, %32, %33, %34, %35, %36, %37, %38) : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index) -> (!ta.sptensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index>)
/// mask_rowptr = mask_tensor.getOperand(2);
/// mask_col = mask_tensor.getOperand(3);
/// mask_val = mask_tensor.getOperand(4);
/*
    sptensor_construct(
        A1pos,  /// number of rows
        A1crd,  /// discard
        A2pos,  /// rowptr array
        A2crd,  /// col_id array
        Aval, /// data array
        A1pos_size,
        A1crd_size,
        A2pos_size,
        A2crd_size,
        Aval_size,
        dim1_size,
        dim2_size,
    )
*/
void findMaskTensorInfo(maskingInfo /* contents updated after call*/) {

}


void genInitMarkArrayUsingMask(three_ancestors,
                                alloc_mark_array,
                                maskingInfo,
                                OpBuilder &builder,
                                Location &loc) {
    
    /// Back up Insertion Point
    last_insertion_point = builder.saveInsertionPoint();

    /// Change Insertion point to the place before the 2nd-level for-loop;
    builder.setInsertionPoint(three_ancestors[1].symbolicForOps[0]);

    /// generate the The for-loop

    /// Restore Insertion Point
    builder.restoreInstionPoint(last_insertion_point);

}