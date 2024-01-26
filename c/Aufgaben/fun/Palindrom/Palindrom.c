#include <stdio.h>
#include <string.h>

int istPalindromNummer(int input) {
    int result = 0, q, reminder;
    q = input;

    while (q != 0) {
        reminder = q % 10;
        result = result * 10 + reminder;
        q/= 10;
    }

    if (input == result) {
        return 1;
    } else {
        return 0;
    }
}

int istPalindromString(const char *string) {
    int laenge = strlen(string), i, j;

    for (i = 0, j = laenge - 1; i < j; i++, j--) {
        if (string[i] != string[j]) {
            return 0;
        } else {
            return 1;
        }
    }
}

int main() {
    int input;
    char choice, string[100];

    do {
        printf("n : für Nummer, s: für String, q: end programm \n");
        scanf("%c", &choice);

        switch (choice) {
        case 'n':
            printf("Geben Sie einen Zahl ein: \n");
            scanf(" %d", &input);
            if (istPalindromNummer(input)) {
                printf("true");
            } else {
                printf("false");
            }
            break;
        case 's':
            printf("Geben Sie einen String ein: \n");
            scanf(" %d", &input);
            fgets(string, sizeof(string), stdin);
            string[strcspn(string, "\n")] = '\0'; // Entfernt das Zeilenumbruchzeichen von fgets

            if (istPalindromString(string)) {
                printf("Der String ist ein Palindrom.\n");
            } else {
                printf("Der String ist kein Palindrom.\n");
            }
            break;
        case 'q':
            printf("Programm wird beendet.\n");
            break;
        default:
            printf("Ungültige Auswahl. Bitte erneut eingeben.\n");
            break;
        }
    } while (choice != 'q');

    return 0;
}