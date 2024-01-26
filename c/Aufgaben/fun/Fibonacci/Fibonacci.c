#include <stdio.h>

int main() {
    int a = 0, b = 1, result = 0, input;
    printf("gib die Anzahl der Iterationen ein: \n");
    scanf(" %d", &input);

    for (int i = 0; i < input; i++) {
        printf("%d ", a);
        result = a + b;
        a = b;
        b = result;
    }
    return 0;
}