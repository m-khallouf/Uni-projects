// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:       25.11.22
// Beschreibung: Bibliotheksfunktionen (max(), pow()) verstehen und selber implementieren


void setup() {
  println("concat-Funktion mit Zufallsstring");
  for (int i=9; i>=0; i--) {
    String ergebnis = "";
    String word1 = randomString((int)random(2, 10));
    String word2 = randomString((int)random(2, 10));
    String word3 = randomString((int)random(2, 10));
    String word4 = randomString((int)random(2, 10));
    String word5 = randomString((int)random(2, 10));
    ergebnis = word1 + word2 + word3 + word4 + word5;
    System.out.printf("concat(%10s, %10s, %10s, %10s, %10s) -> %s\n", word1, word2, word3, word4, word5, ergebnis);
  }

  for (int i = 10; i >= 10; i--) {
    String ergebnis2 = "";
    String word6 = "high";
    String word7 = "way";
    String word8 = "to";
    String word9 = "hell";
    String word10 = "-acdc";
    ergebnis2 = word6 + word7 + word8 + word9 + word10;
    System.out.printf("concat(%10s, %10s, %10s, %10s, %10s) -> %s\n", word6, word7, word8, word9, word10, ergebnis2);
  }
  
  println("");
  println("maximum-Funktion mit byte-Zahlen");
  maximum();

  println("");
  println("myPow mit byte-Zahlen");
  myPow();
}

void draw() {
}

/**
 * Methodenname: maximum
 * Datum         25.11.2022
 * Autor:        Khallouf
 * <B>Beschreibung: Zufallswerte(byte und double) um die maximums eines beliebten zahl zu erzeugen
 *
 */
void maximum() {
  for (int leange = 0; leange <= 9; leange++) {
    byte max = -128;
    byte[] randomNumbers = new byte[5];
    for (int i = 0; i < 5; i++) {
      randomNumbers[i] = (byte)random(0, 255);
    }
    max = randomNumbers[0];
    for (int i = 1; i < 5; i++) {
      if (max < randomNumbers[i])
        max = randomNumbers[i];
    }
    System.out.printf("maximum(%4d, %4d, %4d, %4d, %4d) -> %4d \n", 
    randomNumbers[0], randomNumbers[1], randomNumbers[2], randomNumbers[3], randomNumbers[4], max);
  }
  
  println("");
  println("maximum-Funktion mit double-Zahlen");
  for (int leange = 0; leange <= 9; leange++) {
    double max = -128;
    double[] randomNumbers = new double[5];
    for (int i = 0; i < 5; i++) {
      randomNumbers[i] = (double)random(0, 255);
    }
    max = randomNumbers[0];
    for (int i = 1; i < 5; i++) {
      if (max < randomNumbers[i])
        max = randomNumbers[i];
    }
    System.out.printf("maximum(%,4.1f, %,4.1f, %,4.1f, %,4.1f, %,4.1f) -> %,4.1f \n", randomNumbers[0], randomNumbers[1],
      randomNumbers[2], randomNumbers[3], randomNumbers[4], max);
  }
}

/**
 * Methodenname: myPow
 * Datum         25.11.2022
 * Autor:        Khallouf
 * <B>Beschreibung: die Quadrat von 2-10 berechnen
 *
 */
void myPow() {
  int[] result = new int[11];
  for (byte power = 0; power <= 6; power++) {
    for (byte base = 2; base <= 10; base++) {
      if (power == 0)
        result[base] = 1;
      else
        result[base] = result[base] * base;
      System.out.printf("%2d ^ %2d = %7d | ", base, power, result[base]);
    }
    System.out.printf("\n");
  }
}

/**
 * Methodenname: randomString
 * Datum         25.11.2022
 * Autor:        Gurn
 * <B>Beschreibung: Zufallsstring mit kleinen Buschstaben erzeugen
 * @param pLaenge  - Wie lang soll der Zufallsstring werden
 * @return String  - erzeugter Zufallsstring
 *
 */
public String randomString(int pLaenge) {
  String ergebnis = "";
  for (int i=0; i<pLaenge; i++) {
    char zufallsChar = (char)((int)(Math.random()*26)+97);
    ergebnis += zufallsChar;
  }
  return ergebnis;
}
