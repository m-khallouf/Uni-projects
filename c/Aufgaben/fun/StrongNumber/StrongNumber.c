#include <stdio.h>

int istStrongNumber(int input) {
    int fak = 1, counter = 0, result = 0, reminder;
    int q = input;

    while (q != 0) {
        reminder = q % 10;

        for (int i = 1; i <= reminder; i++) {
            fak *= i;
        }
        result += fak;
        fak = 1;
        q /= 10;
    }
    return result;
}

int main() {

}