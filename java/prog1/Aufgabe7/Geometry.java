
import java.util.Scanner;

public class Geometry {
    Scanner kbdInput = new Scanner (System.in);
    public static void main(String[] args) {
        Geometry geoManager = new Geometry();
        geoManager.run();
    }

    public void run() {
        char choice;

        do {
            System.out.print("Calulate Distance (d), area (a) or quit (q)? ");
            choice = kbdInput.next().charAt(0);

            switch (choice) {
                case 'd':
                    System.out.println("Distance between two points\nInput point");
                    Point point1 = readPoint();
                    System.out.println();

                    System.out.println("Input point");
                    Point point2 = readPoint();

                    point2.print();
                    point1.print();

                    System.out.println();
                    double distance = point1.distance(point2);
                    System.out.println("Distance: " + String.format("%.2f", distance));
                    break;
                case 'a':
                    break;
                case 'q':
                    System.out.println("Programm wird beendet");
                    break;
                default:
                    System.out.println("Ungültige Auswahl. Bitte erneut eingeben");
                    break;
            }
        } while (choice != 'q');
    }

    public Point readPoint() {
        double x = readCoordinate("x");
        double y = readCoordinate("y");
        double z = readCoordinate("z");
        return new Point(x, y, z);
    }

    public double readCoordinate(String coorName) {
        System.out.print( coorName + " -coordinate: ");
        return kbdInput.nextDouble();
    }
}