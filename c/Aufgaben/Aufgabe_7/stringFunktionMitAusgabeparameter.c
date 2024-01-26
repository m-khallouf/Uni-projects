#include <stdio.h>
#include <string.h>

int calculateValues(const char *inputString, int *length, char *minChar, char *maxChar) {
    *length = strlen(inputString);
    *minChar = *inputString;
    *maxChar = *inputString;

    for (int i = 1; i < *length; i++) {
        if (inputString[i] < *minChar) {
            *minChar = inputString[i];
        } else if (inputString[i] > *maxChar) {
            *maxChar = inputString[i];
        }
    }

    return *length;
}

int main() {
    char inputString[100];
    int length;
    char minChar, maxChar;

    do {
        printf("Bitte Test-String eingeben (oder 'q' zum Beenden): ");
        scanf("%s", inputString);

        if (inputString[0] != 'q') {
            length = calculateValues(inputString, &length, &minChar, &maxChar);
            printf("length = %d, minChar = %c, maxChar = %c\n", length, minChar, maxChar);
        }

    } while (inputString[0] != 'q');

    return 0;
}
