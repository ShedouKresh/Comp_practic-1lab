#include <stdio.h>
#include "io.h"

void inputArray(int arr[], int size) {
    printf("Enter %d massive elements:\n", size);
    for(int i = 0; i < size; i++) {
        scanf("%d", &arr[i]);
    }
}
void printArray(int arr[], int size) {
    printf("Massive: ");
    for(int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}