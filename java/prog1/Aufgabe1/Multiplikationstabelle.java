import java.util.Scanner;

public class Multiplikationstabelle {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("geben Sie die Anzahl der Spalten ein: ");
        int spalten = scanner.nextInt();

        System.out.print("geben Sie die Azahl der Zeilen ein: ");
        int zeilen = scanner.nextInt();

        for (int i = 1; i <= zeilen; i++) {
            for (int j = 1; j < spalten; j++) {
                System.out.print(i * j + " ");
            }
            System.out.println();
        }
    }
}
