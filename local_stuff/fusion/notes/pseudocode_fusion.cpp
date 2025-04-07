void doFusion()
{
    loops = get all for-loops in order;
    Map loop2destination;  /// Map to record each for-loop's new location
    Map tensor2index;  /// Map to record a tensor's new access index. (Only the intermediate tensor needs its new index)
    /// here we assume loops[i]'s LHS is loops[i+1]'s RHS; If not, we can first find out the chain and the head.
    for (i = 1 to loops.size()) {
        /// Collect information between loops[0] and loops[i];
        /// loops[0] is the head. Other loops will be fused to loops[0];
 
        /// Record the iterators that can be fused, such as [i,j,k] for [i,j,k,l,r] and [i,j,k,r].
        common_iterators = getCommonIterators(loops[0], loops[i]);  /// Note here is loops[0].
 
        /// Record the location to create new compute node. The location should be in the end of the last common 
        /// iterator's loop body. 
        /// For example, if common iterators are [i, j, k], then the location should be at the end of the head's k's 
        /// loop body.
        loop2destination[i] = getDestination(loops[i], common_iterators);  
 
        /// Record the new indices for the intermediate tensor, such as T[i,j,k,r] to be T[r]
        tensor = getCommonTensor(loops[i - 1], loops[i]);  /// Note here is loops[i-1], not loops[0]
        tensor2index[tensor] = getIndices(tensor, common_iterators); 
    }
 
    /// Generate the fused loop
    for (i = 1 to loops.size()) {
        /// Create the new loop body at the right location; replace tensors with the new tensors with new indices.
        createNewBody(loops[i], tensor2index, loop2destionation[i]);
        removeOldBody(loops[i]);
    }
}
