import java.util.Scanner;

public class Palindrom {


    public static boolean isPalindrom(String word) {
        int leftIndex = 0;
        int rightIndex = word.length() - 1;

        while (leftIndex < rightIndex) {
            if (word.charAt(leftIndex) != word.charAt(rightIndex)) {
                return false;
            }
            leftIndex++;
            rightIndex--;
        }

        return true;
    }

    public static String normalize(String word) {
        StringBuilder strBuilder = new StringBuilder();

        for (int i = 0; i < word.length(); i++) {
            char aChar = word.charAt(i);

            if (Character.isAlphabetic(aChar)) {
                strBuilder.append(Character.toLowerCase(aChar));
            }
        }
        return strBuilder.toString();
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Palindrom-Test");
        System.out.print("geben Sie bitte das zu pruefende Wort ein:");
        String input = sc.nextLine();

        if (isPalindrom(normalize(input))) {
            System.out.println("Das Wort \"" + input + "\" ist ein Palindrom.");
        } else {
            System.out.println("Das Wort \"" + input + "\" ist kein Palindrom.");
        }
    }
}