#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LINE_LENGTH 128

void reverse(char line[]) {
    int i;
    int length = strlen(line);
    char tmp;

    for (i = 0; i < length / 2; i++) {
        tmp = line[i];
        line[i] = line[length - i - 1];
        line[length - i - 1] = tmp;
    }
}

void copyAndReverse(FILE *inputFile, FILE *outputFile) {
    char line[MAX_LINE_LENGTH];

    fputs("aaa", outputFile);

    while (fgets(line, sizeof(line), inputFile) != NULL) {
        printf("%s", line);
        reverse(line);
        fputs(line, outputFile);
    }
}

int main() {
    char inputFileName[256];
    char outputFileName[256];
    FILE *inputFile;
    FILE *outputFile;

    printf("gebe den Namen der Eingabedatei ein: ");
    scanf("%s", inputFileName);

    printf("gebe den Namen der Ausgabedatei ein: ");
    scanf("%s", outputFileName);

    inputFile = fopen(inputFileName, "r");
    if (inputFile == NULL) {
        perror("Fehler beim Öffnen der Eingabedatei");
        return EXIT_FAILURE;
    }

    outputFile = fopen(outputFileName, "r+w");
    if (outputFile == NULL) {
        perror("Fehler beim Öffnen der Ausgabedatei");
        fclose(inputFile);
        return EXIT_FAILURE;
    }

    copyAndReverse(inputFile, outputFile);

    fclose(inputFile);
    fclose(outputFile);

    printf("Kopieren und Umkehren erfolgreich abgeschlossen.\n");

    return EXIT_SUCCESS;
}