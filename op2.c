#include "op2.h"

int sumInRange(int arr[], int size, int x, int y) {
    int sum = 0;
    for (int i = 0; i < size; i++) {
        if (arr[i] >= x && arr[i] <= y) {
            sum += arr[i];
        }
    }
    return sum;
}