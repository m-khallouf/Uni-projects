package schiffe;

import java.util.ArrayList;
import java.util.Scanner;

public class Member {
    private String name;
    private String yearOfBirth;
    private String address;
    private static ArrayList<Member> membersList = new ArrayList<>();
    private static Scanner scanner = new Scanner(System.in);


    public Member(String name, String yearOfBirth, String address) {
        this.name = name;
        this.yearOfBirth = yearOfBirth;
        this.address = address;
        membersList.add(this);
    }

    //Getter- und Setter-Method
    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setYearOfBirth(String yearOfBirth) {
        this.yearOfBirth = yearOfBirth;
    }

    public String getYearOfBirth() {
        return yearOfBirth;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return address;
    }

    static void addMember() {
        System.out.println("Enter member name:");
        String memberName = scanner.nextLine();

        System.out.println("Enter member YearOfBirth:");
        String memberYearOfBirth = scanner.nextLine();

        System.out.println("Enter member address:");
        String memberAddress = scanner.nextLine();

        new Member(memberName, memberYearOfBirth, memberAddress);

        System.out.println("Member added successfully.");
    }

    static void deleteMember() {
        System.out.println("Enter member name to delete:");
        String memberName = scanner.nextLine();

        membersList.removeIf(member -> member.getName().equals(memberName));
        System.out.println("Member deleted successfully.");
    }

    public static void displayMembers() {
        if (membersList.isEmpty()) {
            System.out.println("No members available.");
        } else {
            System.out.println("All Members:");
            for (Member member : membersList) {
                System.out.println(member);
            }
        }
    }

    @Override
    public String toString() {
        return  "All members{" + "member = " + getName() + ", yearOfBirth = " + getYearOfBirth() +
                ", Address = '" + getAddress() + '\'' + '}';
    }
}