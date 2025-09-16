// After the outer forall loop, before the index tree yield.
//---------------------
// The WRONG version
//---------------------
%accumulator = arith.constant 0 : i64
%68:2 = scf.for %i = %c0 to %N step %c1 iter_args(%arg6 = %accumulator, %arg7 = %pos) -> (i64, tensor<?xi64>) {
    %curr = tensor.extract %arg7[%i] : tensor<?xi64>
    %inserted = tensor.insert %arg6 into %arg7[%i] : tensor <?xi64>
    %offset = arith.addi %arg6, %curr : i64
    scf.yield %offset, %inserted : i64, tensor<?xi64>
}
%inserted = tensor.insert %68#0 into %68#1[%N] : tensor<?xi64>
%final_domain = unrealized_cast(%num_iters_of_loop + 1,
                                %alloc_size,
                                %68#0, // %accumulator
                                %dim_size,
                                %inserted, // %pos_final
                                %mark_array);
//---------------------
// The correct version
//---------------------
%accumulator = arith.constant 0 : i64
%68:2 = scf.for %i = %c1 to %N_plus_one step %c1 iter_args(%arg6 = %accumulator, %arg7 = %pos) -> (i64, tensor<?xi64>) {
    %curr = tensor.extract %arg7[%i] : tensor<?xi64>
    %added = arith.addi %arg6, %curr : i64
    %inserted = tensor.insert %added into %arg7[%i] : tensor<?xi64>
    scf.yield %added, %inserted : i64, tensor<?xi64>
}
%final_domain = unrealized_cast(%num_iters_of_loop, /// TODO: %num_iters_of_loop, not %num_iters_of_loop + 1
                                %alloc_size,
                                %68#0, // %accumulator
                                %dim_size,
                                %68#1, // %pos_final
                                %mark_array);
it.yield %final_domain;


1. The `pos_size` is okay. For a row `i`, pos_size == i; inside_mark == i + 1;
2. The accumulator for-loop is wrong.
3. The final_domain.pos_size is wrong. `final_domain.pos_size == num_iters_of_loop;`, not num_iters_of_loop + 1.