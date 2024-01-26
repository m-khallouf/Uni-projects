import java.util.Scanner;

public class ZerlegungVonZahlen {

    public static void umrechneInDualzahl(int zahl) {
        if (zahl > 65535) {
            System.out.println("Fehler: Die Zahl kann nicht in 16 Bit dargestellt werden.");
            return;
        }

        System.out.println("Umrechnung in Dualzahl:");
        int[] dualzahl = new int[16];

        for (int i = 15; i >= 0; i--) {
            dualzahl[i] = zahl % 2;
            zahl /= 2;
        }

        for (int bit : dualzahl) {
            System.out.print(bit);
        }
        System.out.println();
    }

    public static void zerlegeZahl(int zahl) {
        System.out.println("Zerlegung der Zahl:");

        String zahlString = String.valueOf(zahl);
        int anzahlStellen = zahlString.length();

        for (int i = 0; i < anzahlStellen; i++) {
            char ziffer = zahlString.charAt(i);
            int zifferWert = Character.getNumericValue(ziffer);
            int potenz = anzahlStellen - i - 1;
            int zifferBeitrag = zifferWert * (int) Math.pow(10, potenz);
            System.out.println(ziffer + " * 10^" + potenz + " + " + zifferBeitrag);
        }
    }


    public static void main(String[] args) {
        try (Scanner scanner = new Scanner(System.in)) {
            // Zerlegung der Zahl in einzelne Ziffern
            System.out.print("Geben Sie eine positive ganze Zahl zur Basis 10 ein: ");
            int zahl = scanner.nextInt();
            zerlegeZahl(zahl);

            // Umrechnung in eine Dualzahl mit 16 Bit
            System.out.print("Geben Sie eine positive ganze Zahl zur Basis 10 ein (max. 65535): ");
            zahl = scanner.nextInt();
            umrechneInDualzahl(zahl);
        }
    }
}