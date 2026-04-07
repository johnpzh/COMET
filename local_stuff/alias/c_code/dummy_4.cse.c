#include <stdlib.h>

int dummy_4(int a, int b) {
    int *p = (int *) malloc(1 * sizeof(int));
    *p = a + b;
    int y = a + b;

    return *p + y;
}