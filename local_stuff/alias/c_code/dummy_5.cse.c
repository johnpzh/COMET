int dummy_5(int a, int b, int *p) {
    *p = a + b;
    int y = a + b;

    return *p + y;
}