#include <stdio.h>
int main() {
    int n, i;
    printf("Натуральное число");
    scanf("%d", &n);
    printf("Делители числа", n);
    for (i = 1; i <= n; i++) {
        if (n % i == 0) {
            printf("%d ", i);
        }
    }
    printf("");
    return 0;
}