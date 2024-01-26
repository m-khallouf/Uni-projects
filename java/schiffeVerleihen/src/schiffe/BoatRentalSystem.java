package schiffe;
import java.util.Scanner;

public class BoatRentalSystem {
    public static void main(String[] args) {
        run();
    }

    public static void run() {
        Scanner scanner = new Scanner(System.in);
        int choice;

        do {
            displayMenu();
            choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    Member.addMember();
                    break;
                case 2:
                    Member.deleteMember();
                    break;
                case 3:
                    Member.displayMembers();
                    break;
                case 4:
                    Boat.addBoat();
                    break;
                case 5:
                    Boat.deleteBoat();
                    break;
                case 6:
                    Boat.displayBoats();
                    break;
                case 7:
                    Reservation.reserveBoat();
                    break;
                case 8:
                    Reservation.displayReservations();
                    break;
                case 9:
                    Reservation.cancelReservation();
                    break;
                /*case 10:
                    saveDataToFile();
                    break;*/
                case 0:
                    System.out.println("Program exiting...");
                    break;
                default:
                    System.out.println("Invalid choice. Please try again.");
            }
        } while (choice != 0);
    }

    private static void displayMenu() {
        System.out.println("1. Add Member");
        System.out.println("2. Delete Member");
        System.out.println("3. Display Members");
        System.out.println("4. Add Boat");
        System.out.println("5. Delete Boat");
        System.out.println("6. Display Boats");
        System.out.println("7. Reserve Boat");
        System.out.println("8. Display Reservations");
        System.out.println("9. Cancel Reservation");
        //System.out.println("10. Save Data to File");
        System.out.println("0. Exit");
        System.out.print("Enter your choice:");
    }
}
