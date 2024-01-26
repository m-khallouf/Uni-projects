#include <stdio.h>
#include <stdlib.h>

typedef struct Point {
    double xWert;
    double yWert;
    double zWert;
}POINT;

typedef struct node {
    POINT data;
    struct node *previous;
}NODE;


void push(NODE** top, POINT newData) {
    NODE *newNode = (NODE*)malloc(sizeof(NODE));
    if (newNode == NULL) {
        fprintf(stderr, "Fehler: Speicher konnte nicht alloziert werden.\n");
        exit(EXIT_FAILURE);
    } else {
        newNode->data = newData;
        newNode->previous = *top;
        *top = newNode;
    }
}

POINT pop(NODE *top) {
    POINT result = (*top)->data;
    NODE *tmp = *top;
    *top = (*top)->previous;
    free(tmp);

    return result;
}

int isEmpty(NODE **top) {
    return *top == NULL;
}

void printStack(NODE *top) {
    while (!isEmpty(top)) {
        POINT currentIndex = pop(top);
        printf("x= %.2lf y= %.2lf z= %.2lf\n", currentIndex.xWert, currentIndex.yWert, currentIndex.zWert);
    }
}

int main() {
    NODE* pointStack = NULL;
    char choice;

    do {
        printf("'p' fuer Punkt eingeben, 'o' fuer Ausgabe: ");
        scanf(" %c", &choice);

        switch (choice) {
            case 'p': {
                POINT newPoint;
                printf("Bitte X-Wert eingeben: ");
                scanf("%lf", &newPoint.xWert);
                printf("Bitte Y-Wert eingeben: ");
                scanf("%lf", &newPoint.yWert);
                printf("Bitte Z-Wert eingeben: ");
                scanf("%lf", &newPoint.zWert);

                push(&pointStack, newPoint);

                break;
            }
            case 'o':
                printf("Ausgabe in main()\n");
                printStack(&pointStack);
                break;
            default:
                printf("Ungültige Eingabe\n");
                break;
        }
    } while (choice != 'q');

    free(pointStack);

    return 0;
}