#include <stdio.h>
#include <stdint.h>

int32_t findMax(int32_t arr[], int32_t arrLen) {
    int32_t max = arr[0];
    for (int32_t i = 1; i < arrLen; i++) {
        if (arr[i] > max) {
            max = arr[i];
        }
    }
    return max;
}

double calculateMean(int32_t arr[], int32_t arrLen) {
    double sum = 0;  // Änderung des Typs auf double für die Gleitkommadivision

    if (arrLen == 0) {
       sum = 0.0;
    }

    for (int32_t i = 0; i < arrLen; i++) {
        sum += arr[i];
    }

    sum /= arrLen;
    return sum;
}

void changeSignOfNegatives(int32_t arr[], int32_t arrLen) {
    for (int32_t i = 0; i < arrLen; i++) {
        if (arr[i] < 0) {
            arr[i] = -arr[i];
        }
    }
}

void deleteNegativeNumbers(int32_t arr[], int32_t arrLen) {
    int32_t nonNegativeIndex = 0;

    for (int32_t i = 0; i < arrLen; i++) {
        if (arr[i] < 0) {
            arr[i] = 0;
        }
    }

    for (int32_t i = 0; i < arrLen; i++) {
        if (arr[i] != 0) {
            arr[nonNegativeIndex] = arr[i];
            nonNegativeIndex++;
        }
    }

    for (int32_t i = nonNegativeIndex; i < arrLen; i++) {
        arr[i] = 0;
    }
}

void separateEvenOddValues(int32_t arr[], int32_t arrLen) {
    int32_t leftIndex = 0;
    int32_t rightIndex = arrLen - 1;
    int32_t tmp;

    while (leftIndex <= rightIndex) {
        // Suche die erste ungerade Zahl von links
        while (leftIndex < arrLen && arr[leftIndex] % 2 == 0) {
            leftIndex++;
        }

        // Suche die erste gerade Zahl von rechts
        while (rightIndex >= 0 && arr[rightIndex] % 2 != 0) {
            rightIndex--;
        }

        // Vertausche die Elemente, wenn notwendig
        if (leftIndex < rightIndex) {
            tmp = arr[leftIndex];
            arr[leftIndex] = arr[rightIndex];
            arr[rightIndex] = tmp;
        }

        leftIndex++;
        rightIndex--;
    }
}

void printArr(int32_t arr[], int32_t arrLen) {
    for (int32_t i = 0; i < arrLen; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}


void performOperation(int32_t arr[], int32_t arrLen, int32_t choice) {
    switch (choice) {
        case 1:
            printf("Größtes Element des Arrays: %d", findMax(arr, arrLen));
            break;
        case 2:
            printf("Arithmetisches Mittel aller Elemente: %.2f", calculateMean(arr, arrLen));
            break;
        case 3:
            changeSignOfNegatives(arr, arrLen);
            printf("Array nach Änderung der Vorzeichen: ");
            printArr(arr, arrLen);
            break;
        case 4:
            deleteNegativeNumbers(arr, arrLen);
            printf("Array nach entfernen der negativen Werten: ");
            printArr(arr, arrLen);
            break;
        case 5:
            separateEvenOddValues(arr, arrLen);
            printf("Array nach Trennung von geraden und ungeraden Werten: ");
            printArr(arr, arrLen);
            break;
        default:
            printf("Fehler: Unerwarteter Fehler bei der Auswahl.\n");
            break;
    }
}

int main() {
    int32_t arr[] = {4, -7, 9, 3, -1, 6, -2, 5, 8};
    int32_t arrLen = 9;
    int32_t choice;

   do {
        printf(" 1. Max Element des Arrays\n 2. Arithmetisches Mittel\n 3. Vorzeichenänderung\n 4. Lösche negative Werte\n 5. Trennung geraden und ungeraden Zahlen \n 6. Beenden\n Mode eingeben (1-6):\n ");
        scanf("%d", &choice);

        // Überprüfen, ob die Eingabe gültig ist
        if (choice < 1 || choice > 6) {
            printf("Fehler: Ungueltige Eingabe. Bitte waehlen Sie eine Zahl zwischen 1 und 6.\n");
        } else if (choice != 6) {
            performOperation(arr, arrLen, choice);
        }

    } while (choice != 6);
}