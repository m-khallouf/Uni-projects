package schiffe;

import java.util.ArrayList;
import java.util.Scanner;

public class Reservation {
    private Member member;
    private static Boat boat;
    private Reservation reservation;
    private String reservationDate;
    private ArrayList<String> resevationList = new ArrayList<>();
    private static Scanner scanner = new Scanner(System.in);

    public Reservation(Member member, Boat boat, String reservationDate) {
        this.member = member;
        this.boat = boat;
        this.reservationDate = reservationDate;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public Boat getBoat() {
        return boat;
    }

    public void setBoat(Boat boat) {
        this.boat = boat;
    }

    public String getReservationDate() {
        return reservationDate;
    }

    public void setReservationDate(String reservationDate) {
        this.reservationDate = reservationDate;
    }

    public static void reserveBoat() {
        System.out.println("choose boat to reserve: ");
        String reserve = scanner.nextLine();
    }

    public static void displayReservations() {
    }

    public static void cancelReservation() {
    }

    @Override
    public String toString() {
        return "Reservation{" +
                "member = " + member.getName() +
                ", boat = " + boat.getType() +
                ", reservationDate='" + reservationDate + '\'' +
                '}';
    }
}