import time
import numpy as np
import scipy as sp
from cometpy import comet
from conftest import gpu

def run_numpy(A,B):
	C = np.einsum('ikj,kj->ij', A,B)

	return C

@comet.compile(flags=None, target="gpu")
def run_comet_with_jit(A,B):
	C = comet.einsum('ikj,kj->ij', A,B)

	return C

@gpu
def test_gpu_mult_dense_ij_ikj_kj():
	A = np.full([4, 4, 4], 3.2,  dtype=float)
	B = np.full([4, 4], 1.7,  dtype=float)
	C = np.full([4, 4], 0.0,  dtype=float)
	expected_result = run_numpy(A,B)
	result_with_jit = run_comet_with_jit(A,B)
	if sp.sparse.issparse(expected_result):
		expected_result = expected_result.todense()
		result_with_jit = result_with_jit.todense()
	np.testing.assert_almost_equal(result_with_jit, expected_result)
