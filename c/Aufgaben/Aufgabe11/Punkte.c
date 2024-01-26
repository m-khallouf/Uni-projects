#include <stdio.h>
#include <stdlib.h>

struct point {
    float x;
    float y;
    float z;
};
/**
 * file -> a pointer to the file where the point will be added
 * x, y, z added points
*/
void addPointToFile(FILE* file, float x, float y, float z) {
    struct point p = {x, y, z};
    fwrite(&p, sizeof(struct point), 1, file);
}

void displayPointsFromFile(FILE* file) {
    struct point p;
    int count = 0;
    rewind(file);

    while (fread(&p, sizeof(struct point), 1, file) == 1) {
        printf("Punkt (x, y, z): %.2f, %.2f, %.2f,\n", p.x, p.y, p.z);
        count++;
    }

    printf("Block aus Datei gelesen: %d Datensätze\n", count);
}

int main() {
    char sourceFileName[100];
    char choice = ' ';
    float xCoordinate, yCoordinate, zCoordinate;
    FILE* file;

    printf("Dateiname eingeben: ");
    scanf("%s", sourceFileName);

    file = fopen(sourceFileName, "ab+");
    if (file == NULL) {
        printf("Fehler beim Öffnen der Datei.\n");
        return 1;
    }

    while (choice != 'q') {
        printf("Eingabe n (neuer Punkt) l (Datei lesen) q (quit): ");
        scanf(" %c", &choice);

        switch (choice) {
            case 'n':
                printf("Bitte x-Koordinate eingeben: ");
                scanf("%f", &xCoordinate);
                printf("Bitte y-Koordinate eingeben: ");
                scanf("%f", &yCoordinate);
                printf("Bitte z-Koordinate eingeben: ");
                scanf("%f", &zCoordinate);
                addPointToFile(file, xCoordinate, yCoordinate, zCoordinate);
                break;
            case 'l':
                displayPointsFromFile(file);
                break;
            case 'q':
                printf("programm wird beendet\n");
                break;
            default:
                printf("Ungültige Eingabe.\n");
                break;
        }
    }

    fclose(file);
    return 0;
}