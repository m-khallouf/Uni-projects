#include <stdio.h>

void SelectionSortArray(int arr[], int len) {
    for (int i = 0; i < len - 1; i++) {
        int min_index = i;

        for (int j = i + 1; j < len; j++) {
            if (arr[j] < arr[min_index]) {
                min_index = j;
            }
        }

        // Swap arr[i] and the minimum element
        int temp = arr[i];
        arr[i] = arr[min_index];
        arr[min_index] = temp;
    }

    // Print the sorted array
    for (int i = 0; i < len; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main(void) {
    int array[] = {2, 9, 3, 8, 1, 10, 6, 4, 1};
    int len = 9;

    SelectionSortArray(array, len);

    return 0;
}
