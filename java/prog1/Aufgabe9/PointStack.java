import java.util.Scanner;
import java.util.Stack;

public class PointStack {
    private static Stack<Point> pointStack = new Stack<>();

    public static void push(Point point) {
        pointStack.push(point);
    }

    private static Point pop() {
        return pointStack.pop();
    }

    public static boolean isEmpty(){
        return pointStack.isEmpty();
    }


    public static void main(String[] args) {
        char choice;
        Scanner scanner = new Scanner(System.in);

        do {
            System.out.print("'p' fuer Punkt eingeben, 'o' fure Ausgabe: ");
            choice = scanner.nextLine().charAt(0);

            switch (choice) {
                case 'p':
                    System.out.print("Bitte x-wert eingeben: ");
                    int x = Integer.parseInt(scanner.nextLine());
                    System.out.print("Bitte y-wert eingeben: ");
                    int y = Integer.parseInt(scanner.nextLine());
                    System.out.print("Bitte z-wert eingeben: ");
                    int z = Integer.parseInt(scanner.nextLine());

                    Point pointPush = new Point(x, y, z);
                    push(pointPush);
                    break;
                case 'o':
                    System.out.println("Ausgabe in main()");
                    while (!isEmpty()) {
                        Point pointPop = pop();
                        pointPop.print();
                    }
                    break;

                default:
                    System.out.println("Ungültige Auswahl. Bitte erneut eingeben.");
                    break;
            }
        } while (choice != 'o');

        scanner.close();
    }
}