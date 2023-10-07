//===- blis_interface.cpp - Simple Blis subset interface -----------------===//
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
// Simple Blis subset interface implementation.
//
//===----------------------------------------------------------------------===//

#include "comet/ExecutionEngine/blis_interface.h"
#include "llvm/Support/raw_ostream.h"

#include <assert.h>
#include <iostream>

#if defined(__x86_64__) || defined(_M_X64) || defined(__i386) || defined(_M_IX86)
void bli_dgemm_x86_ukr(
    dim_t m,
    dim_t n,
    dim_t k,
    double *restrict alpha,
    double *restrict a,
    double *restrict b,
    double *restrict beta,
    double *restrict c, inc_t rs_c0, inc_t cs_c0,
    auxinfo_t *restrict data,
    cntx_t *restrict cntx)
{
  // get the micro - arch
  const char *arch = bli_arch_string(bli_cpuid_query_id());
  // printf("arch: %s\n", arch);

  if ((strcmp("haswell", arch) == 0) ||
      (strcmp("zen", arch) == 0) ||
      (strcmp("zen2", arch) == 0) ||
      (strcmp("zen3", arch) == 0) ||
      (strcmp("skx", arch) == 0) ||
      (strcmp("knl", arch) == 0))
  {
    bli_dgemm_haswell_asm_6x8(m, n, k, alpha, a, b, beta, c, rs_c0, cs_c0, data, cntx);
  }
  else
  {
    llvm::errs() << "Undefined microkernel"
                 << "\n";
  }
}

#elif defined(__aarch64__) || defined(__arm__) || defined(_M_ARM) || defined(_ARCH_PPC)
void bli_dgemm_arm_ukr(
    dim_t m,
    dim_t n,
    dim_t k,
    double *restrict alpha,
    double *restrict a,
    double *restrict b,
    double *restrict beta,
    double *restrict c, inc_t rs_c0, inc_t cs_c0,
    auxinfo_t *restrict data,
    cntx_t *restrict cntx)
{
  // get the micro - arch
  const char *arch = bli_arch_string(bli_cpuid_query_id());
  // printf("arch: %s\n", arch);

  if ((strcmp("firestorm", arch) == 0))
  {
    bli_dgemm_armv8a_asm_8x6r(m, n, k, alpha, a, b, beta, c, rs_c0, cs_c0, data, cntx);
  }
  else
  {
    llvm::errs() << "Undefined microkernel"
                 << "\n";
  }
}
#else

// generic arch-independent gemm microkernel reference implementation:
// https://github.com/flame/blis/blob/master/config/template/kernels/3/bli_gemm_template_noopt_mxn.c

// implements, C := beta * C + alpha * A * B
//   where C: m x n,
//         A: m x k,
//         B: k x n,
//         alpha: scalar,
//         beta: scalar.
//
//   param a: address of a micropanel of matrix A of dimension m x k, stored in column major order.
//   param b: address of a micropanel of matrix B of dimension k x n, stored in row major order.
//   param c: address of a matrix C of dimension m x n, stored according to rs_c and cs_c.
//   param rs_c: row stride of matrix C (i.e.,: the distance to the next row, in units of matrix elements).
//   param cs_c: column stride of matrix C (i.e.,: the distance to the next column, in units of matrix elements).
//               rs_c == 1 && cs_c == 0: means contiguous col-storage desired for C,
//               rs_c == 0 && cs_c == 1: means contiguous row-storage desired for C.

void dgemm_generic_noopt_mxn(
    int64_t m,
    int64_t n,
    int64_t k,
    double *alpha,
    double *a, double *b,
    double *beta,
    double *c,
    int64_t rs_c, int64_t cs_c,
    auxinfo_t *restrict data,
    cntx_t *restrict cntx)
{

  int64_t MR = m;
  int64_t NR = n;

  int64_t i, j, l;

  int64_t rs_ab = 1;
  int64_t cs_ab = MR;

  double ai, bj;
  double *abij;
  double ab[MR * NR];           // holds the computed values
  for (i = 0; i < MR * NR; i++) // initialization
    ab[i] = 0.0;

  /* Perform a series of k rank-1 updates into ab. */
  for (l = 0; l < k; ++l)
  {
    abij = ab;

    for (j = 0; j < NR; ++j)
    {
      bj = *(b + j);
      for (i = 0; i < MR; ++i)
      {
        ai = *(a + i);
        *abij += ai * bj; // perform compute

        abij += rs_ab;
      }
    }
    a += MR;
    b += NR;
  }

  // scale by alpha
  for (i = 0; i < MR * NR; i++)
  {
    ab[i] = (*alpha) * ab[i];
  }

  // Scale c by beta and then add the scaled result in ab.
  for (j = 0; j < NR; ++j)
  {
    for (i = 0; i < MR; ++i)
    {
      c[i * rs_c + j * cs_c] = ab[i * rs_ab + j * cs_ab] +
                               c[i * rs_c + j * cs_c] * (*beta);
    }
  }
};
#endif

extern "C" void _mlir_ciface_linalg_matmul_viewsxsxf64_viewsxsxf64_viewsxsxf64(
    StridedMemRefType<double, 2> *A, StridedMemRefType<double, 2> *B,
    StridedMemRefType<double, 2> *C)
{
  if (A->strides[1] != B->strides[1] || A->strides[1] != C->strides[1] ||
      A->strides[1] != 1 || A->sizes[0] < A->strides[1] ||
      B->sizes[0] < B->strides[1] || C->sizes[0] < C->strides[1] ||
      C->sizes[0] != A->sizes[0] || C->sizes[1] != B->sizes[1] ||
      A->sizes[1] != B->sizes[0])
  {
    printMemRefMetaData(std::cerr, *A);
    printMemRefMetaData(std::cerr, *B);
    printMemRefMetaData(std::cerr, *C);

    return;
  }

  double alpha = 1.0f;
  double beta = 1.0f;
  if (beta == -1.0)
  {
    alpha *= -1.0;
    beta = 1.0;
  }

  auxinfo_t data;
  bli_auxinfo_set_next_a(A->data +  A->offset, &data);
  bli_auxinfo_set_next_b(B->data +  B->offset, &data);

  // get the micro-arch
  arch_t id = bli_cpuid_query_id();
  const char *s = bli_arch_string(id);

  bli_dgemm_asm_6x8(A->sizes[0], // m
                    B->sizes[1], // n
                    A->sizes[1], // k  
                    &alpha,
                    A->data + A->offset,
                    B->data + B->offset,
                    &beta,
                    C->data + C->offset,
                    C->strides[0],
                    C->strides[1],
                    &data, NULL);
}
