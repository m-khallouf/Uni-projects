#include <stdio.h>
#include <stdlib.h>

void tabelle(int zeile, int spalte) {
    for (int i = 1; i <= zeile; i++) {
        for (int j = 1; j <= spalte; j++) {
            printf("%4d", i*j);
        }
        printf("\n");
    }
}

int main() {
    int zeile, spalte;
    char buffer[10];
    char *endptr;

    printf("Geben Sie die Anzahl der Spalten ein: ");
    if (fgets(buffer, sizeof(buffer), stdin) == NULL) {
        printf("Fehler beim Lesen der Eingabe.\n");
        return 1;
    }
    spalte = strtol(buffer, &endptr, 10);

    if(*endptr != '\n' && *endptr != '\0') {
        printf("Ungueltige Eingabe. Bitte geben Sie eine gueltige Ganzzahl ein.\n");
        return 1;
    }

    printf("Geben Sie die Anzahl der Zeile ein: ");
    if (fgets(buffer, sizeof(buffer), stdin) == NULL) {
        printf("Fehler beim Lesen der Eingabe.\n");
        return 1;
    }
    zeile = strtol(buffer, &endptr, 10);

    if (*endptr != '\n' && *endptr != '\0') {
        printf("Ungueltige Eingabe. Bitte geben Sie eine gueltige Ganzzahl ein.\n");
        return 1;
    }

    if (zeile <= 0 || spalte <= 0) {
        printf("Ungueltige Eingabe. Die Anzahl der Zeilen und Spalten muss groeßer als 0 sein.\n");
        return 1;
    }

    tabelle(zeile, spalte);

    return 0;
}