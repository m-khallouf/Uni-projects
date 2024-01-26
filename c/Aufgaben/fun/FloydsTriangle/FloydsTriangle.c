#include <stdio.h>

int main() {
    int n = 1, rows;

    printf("gib anzahl der Zeilen ein: ");
    scanf(" %d", &rows);

    for (int i = 1; i <= rows; i++) {
        for (int j = 1; j <= i; j++) {
            printf("%d ", n);
            n++;
        }
        printf("\n");
    }
    return 0;
}