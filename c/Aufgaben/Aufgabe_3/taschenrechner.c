#include <stdio.h>

static float calculate(char optr, float opr1, float opr2) {
    float result = 0.0;
    switch (optr) {
    case '+':
        result = opr1 + opr2;
        break;
    case '*':
        result = opr1 * opr2;
        break;
    case '-':
        result = opr1 - opr2;
        break;
    case '/':
        if (opr2 != 0) {
            result = opr1 / opr2;
        } else {
            printf("Fehler Division durch Null.\n");
            return 0.0;
        }
        break;
    default:
        printf("Ungültiger Operator: %c\n", optr);
        return 0.0;
    }
    return result;
}

int main() {
    char optr;
    float opr1;
    float opr2;

    printf("Bitte Eingabe Operator (+, -, *, /, q): ");
    while (optr != 'q') {
        scanf(" %c", &optr);
        if (optr != '+' && optr != '-' && optr != '*' && optr != '/') {
            printf("Ungültiger Operator: %c\n", optr);
            continue;
        }

        printf("Bitte Eingabe Operand1: ");
        if (scanf("%f", &opr1) != 1) {
            printf("Ungültiger Operand.\n");
            break;
        }

        printf("Bitte Eingabe Operand2: ");
        if (scanf("%f", &opr2) != 1) {
            printf("Ungültiger Operand.\n");
            break;
        }

        float result = calculate(optr, opr1, opr2);
        printf("Ergebnis: %.2f %c %.2f = %.2f\n", opr1, optr, opr1, result);

        printf("\n");
        printf("Bitte Eingabe Operator (+, -, *, /, q): ");
    }

    return 0;
}