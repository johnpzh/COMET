void dummy_2() {
    int i;
    char C[2];
    char A[10];
    /* ... */
    // for (i = 0; i != 10; ++i) {
    for (i = 0; i < 10; ++i) {
        // ((short *) C)[0] = A[i];  /* Two byte store! */
        // C[1] = A[9-i];          /* One byte store */
        ((short *) C)[0] += A[i];  /* Two byte store! */
        // ((unsigned short *) C)[0] += A[i];  /* Two byte store! */
        C[1] = A[9-i];          /* One byte store */
    }
}