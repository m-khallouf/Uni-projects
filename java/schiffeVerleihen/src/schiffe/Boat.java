package schiffe;

import java.util.ArrayList;
import java.util.Scanner;

public class Boat {
    private String type;
    static ArrayList<String> boatList = new ArrayList<>();
    private static Scanner scanner = new Scanner(System.in);

    private int reservedBoats;
    private int boatsIndex = 0;
    private static final int MAX_BOATS = 20;

    public Boat(String type) {
        this.type = type;
        availableBoats();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
        this.availableBoats();
    }

    public void availableBoats() {
        boatList.add(0, "Serendipity");
        boatList.add(1, "Imagination");
        boatList.add(2, "Liberty");
        boatList.add(3, "Wanderlust");
        boatList.add(4, "Gale");
        boatList.add(5, "Zephyr");
    }

    public static void addBoat() {
        //max size check
        if (boatList.size() >= MAX_BOATS) {
            System.out.println("Maximum boat capacity reached.");
            return;
        }
        System.out.println("Enter boat name to add to the list: [max 20]");
        String boatName = scanner.nextLine();
        boatList.add(boatName);
        System.out.println("Boat added successfully.");
    }

    public static void deleteBoat() {
        System.out.println("Enter boat name to delete:");
        String boatName = scanner.nextLine();
        boatList.remove(boatName);

        if (boatList.remove(boatName)) {
            System.out.println("Boat deleted successfully.");
        } else {
            System.out.println("Boat not found.");
        }
    }

    public static void displayBoats() {
        if (boatList.isEmpty()) {
            System.out.println("No boats available.");
        } else {
            System.out.println("Available Boats:");
            for (String boat : boatList) {
                System.out.println(boat);
            }
        }
    }

    @Override
    public String toString() {
        return "Boat{" +  "type='" + type + '\'' + '}';
    }
}