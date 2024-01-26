#include <stdio.h>

int base10_stellen[5];
int input_10base;
int counter = 0;
int globalInput;
int base1 = 0, base2 = 1, base3 = 2, base4 = 3, base5 = 4;

int base10(int input) {
    input_10base = input;
    globalInput = input;
    int currentStelle = 1;
    for (int i = 0; i < 5; i++, currentStelle *= 10) {
        base10_stellen[i] = input_10base / currentStelle % 10;
        input_10base -= base10_stellen[i] * currentStelle;
        counter++;
        if (input_10base == 0)
            break;
    }
    return input_10base;
}

void print() {
    switch (counter) {
    case 1:
        printf("%d = %d * 10^%d",globalInput, base10_stellen[0],base1);
        break;
    case 2:
        printf("%d = %d * 10^%d + %d * 10^%d",
        globalInput, base10_stellen[1],base2, base10_stellen[0],base1);
        break;
    case 3:
        printf("%d = %d * 10^%d + %d * 10^%d + %d * 10^%d",
        globalInput, base10_stellen[2], base3, base10_stellen[1],base2, base10_stellen[0],base1);
    case 4:
        printf("%d = %d * 10^%d + %d * 10^%d + %d * 10^%d + %d * 10^%d",
        globalInput, base10_stellen[3], base4,
        base10_stellen[2], base3, base10_stellen[1],base2, base10_stellen[0],base1);
        break;
    case 5:
        printf("%d = %d * 10^%d + %d * 10^%d + %d * 10^%d + %d * 10^%d + %d * 10^%d",
        globalInput, base10_stellen[4], base5, base10_stellen[3], base4,
        base10_stellen[2], base3, base10_stellen[1],base2, base10_stellen[0],base1);
        break;

    default:
        printf("ungueltige eingabe");
        break;
    }
}

int main() {
    int globalInput;
    printf("nummber eingeben: ");
    scanf("%d", &globalInput);

    print(base10(globalInput));

    return 0;
}