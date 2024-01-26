public class UnicodeTabelle {
    public static void main(String[] args) {
        char charcter;
        /*for (int i = 32; i <= 78; i++) {
            for (int j = i; j <= 255; j += 56)  {
                charcter = (char) j;
                System.out.printf("   %3d   %c", j, charcter);
            }
            System.out.println();
        }*/


        for(int i = 32; i < 256; i++) {
            charcter = (char) i;
            System.out.printf("  %3d  %c", i, charcter);
            if(i % 4 == 3) {
                System.out.println();;
            }
        }
    }
}