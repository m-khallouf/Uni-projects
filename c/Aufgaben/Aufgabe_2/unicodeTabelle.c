#include <stdio.h>
#include <stdlib.h>

int main() {

    //Variante 1
    int start = 32;
    int end = 255;
    for (int i = start; i <= end; i++) {
        printf("%3d %c ", i, i);
        if ((i - start + 1) % 4 == 0) {
            printf("\n");
        }

    }

    //Variante 2
    for (int start = 0; start < 56; start++) {
        for (int i = 0; i < 4; i++) {
            int value = start + (i * 56) + 32;
            printf("%3d %c ", value,value);
        }
        printf("\n");
    }

    return 0;
}