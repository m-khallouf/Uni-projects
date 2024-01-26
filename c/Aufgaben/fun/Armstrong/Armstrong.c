#include <stdio.h>

int istArmstrong(int input) {
    int counter = 0, q, reminder, multiply;

    while (q != 0) {
        q = q / 10;
        counter++;
    }
    int count = counter;
    int result = 0;
    for (int i = 0; i < counter; i++) {

    }

    while (q != 0) {
        reminder = q % 10;
        while (count != 0) {
            multiply = multiply * reminder;
            count--;
        }
        result = result + multiply;
        count = counter;
        q /= 10;
        multiply = 1;
    }

    if (input == result) {
        return 0;
    } else {
        return 1;
    }
}

int main() {
    int input;

    printf("gib ein Nummer ein um zu überprüfen ob es sich um ein Armstrong handelt: ");
    scanf(" %d", &input);

    if (istArmstrong(input)) {
        printf("true");
    } else {
        printf("false");
    }

    return 0;
}