import java.util.Scanner;

public class Taschenrechner {

    public static float calculate(char optr, float opr1, float opr2) {
        float result = 0;

        switch (optr) {
            case '+':
                result += opr1 + opr2;
                break;
            case '-':
                result += opr1 - opr2;
                break;
            case '*':
                result += opr1 * opr2;
                break;
            case '/':
                if (opr2 != 0) {
                    result = opr1/ opr2;
                } else {
                    System.out.println("Fehler: Division durch 0 nicht erlaubt.");
                }
                break;
            case 'q':
                System.out.println("programm beendet");
                break;
            default:
                System.out.println("Fehler: Ungültiger Operator.");
                break;
        }
        return result;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        char operator;
        float operand1, operand2;

        do {
            System.out.print("Bitte Eingabe Operator (+, -, *, /, q): ");
            operator = scanner.next().charAt(0);

            if (operator == 'q') {
                break;
            } else {
                System.out.print("Bitte Eingabe Operand1: ");
                operand1 = scanner.nextFloat();

                System.out.print("Bitte Eingabe Operand2: ");
                operand2 = scanner.nextFloat();

                float ergebnis = calculate(operator, operand1, operand2);

                System.out.println("Ergebnis: " + operand1 + " " + operator + " " + operand2 + " = " + ergebnis);
            }
        } while (operator != 'q');
    }
}
