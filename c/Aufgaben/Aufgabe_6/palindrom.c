#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <ctype.h>

int normalize(char word[]) {
    int changes = 0;
    int length = strlen(word);
    int writeIndex = 0;

    for (int i = 0; i < length; i++) {
        if (word[i] != ' ') {
            // Konvertiere jeden Buchstaben in Kleinbuchstaben
            word[writeIndex] = tolower(word[i]);
            writeIndex++;
            // Zähle die Anzahl der veränderten Buchstaben
            changes++;
        }
    }

    // Setze das Null-Zeichen am Ende der normalisierten Zeichenkette
    word[writeIndex] = '\0';

    return changes;
}

bool isPalindrom(char word[]) {
    int leftIndex = 0;
    int rightIndex = strlen(word) - 1;

    while (leftIndex <= rightIndex) {
        if (word[leftIndex] == word[rightIndex]) {
            leftIndex++;
            rightIndex--;
        } else {
            return false;
        }
    }

    return true;
}

int main() {
    char word[100];

    printf("Palindrom-Test\n");
    printf("Geben Sie bitte das zu pruefende Wort ein: ");

    // Verwende fgets für die Eingabe einer Zeile
    fgets(word, sizeof(word), stdin);

    // Entferne das Zeilenumbruchzeichen von fgets
    word[strcspn(word, "\n")] = '\0';

    // Normalisiere die Eingabe
    int changes = normalize(word);

    printf("Normalisierte Eingabe: %s\n", word);

    if (isPalindrom(word)) {
        printf("Das Wort ist ein Palindrom.\n");
    } else {
        printf("Das Wort ist kein Palindrom.\n");
    }

    return 0;
}