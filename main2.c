#include <stdio.h>
#include "io.h"
#include "op2.h"

int main() {
    int m[15];
    int x, y;
    inputArray(m, 15);
    printf("Enter X and Y ");
    scanf("%d %d", &x, &y);
    int res = sumInRange(m, 15, x, y);
    printf("Summ %d\n", res);
    return 0;
}