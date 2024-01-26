#include <stdio.h>

int main() {
    int binary, decimal = 0, weight = 1, reminder, q;

    printf("Enter the binary number: ");
    scanf(" %d", &binary);

    while (binary != 0) {
        reminder = binary % 10;
        decimal += reminder * weight;
        binary /= 10;
        weight *= 2;
    }

    printf("binary number in decimal is: %d", decimal);

    return 0;
}