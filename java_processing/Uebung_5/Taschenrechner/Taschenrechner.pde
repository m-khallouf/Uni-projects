// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:       25.11.22
// Beschreibung: verschiedene taschenrechner methoden


void setup() {
  //pm Ausgabe
  pm();
  println("");
  
  //square Ausgabe
  square();
  println("");
  
  //invert Ausgabe
  invert();
  println("");
  
  //multiplikation Ausgabe
  multiplikation();

  
}

void draw() {
}


/**
 * Methodenname: pm
 * Datum         25.11.2022
 * Autor:        Khallouf
 * <B>Beschreibung: plus und minus von zwei zufallswerten(byte und long) erzeugen
 *
 */
void pm() {
  println("pm-Funktion mit byte-Zahlen");

  byte laufvariableByte = 10;
  while (laufvariableByte >= 1) {
    byte random = (byte)random(0, 255);
    byte negativeRandom = (byte)-random;
    System.out.printf(" %4d -> %4d \n", random, negativeRandom);
    laufvariableByte--;
  }
  println("");

  println("pm-Funktion mit long-Zahlen");

  long laufvariableLong = 10;
  while (laufvariableLong >= 1) {
    long random = (long)random(0, 255);
    long negativeRandom = (long)-random;
    System.out.printf(" %3d -> %3d \n", random, negativeRandom);
    laufvariableLong--;
  }
}

/**
 * Methodenname: square
 * Datum         25.11.2022
 * Autor:        Khallouf
 * <B>Beschreibung: die Quadrat von zwei zufallswerten(short und int) erzeugen
 *
 */
void square() {
  println("square-Funktion mit short-Zahlen");
  for (short laufvariable = 10; laufvariable >= 1; laufvariable--) {
    short random = (short)random(0, 1000);
    System.out.printf(" %3d * %3d = %6d\n", random, random, random*random);
  }
  println("");

  println("square-Funktion mit int-Zahlen");
  for (int laufvariable = 10; laufvariable >= 1; laufvariable--) {
    int random = (int)random(0, 1000);
    System.out.printf(" %3d * %3d = %6d\n", random, random, random*random);
  }
}

/**
 * Methodenname: square
 * Datum         25.11.2022
 * Autor:        Khallouf
 * <B>Beschreibung: die inverse von zwei zufallswerten(byte in double und double in byte) erzeugen
 *
 */
void invert() {
  println("invert-Funktion mit byte-Zahlen");
  for (byte laufvariable = 10; laufvariable >= 1; laufvariable--) {
    byte random = (byte)random(0, 255);
    double invertNumber = (1.0 / random);
    System.out.printf(" %-3d -> %1.3f \n", random, invertNumber);
  }
  println("");

  println("invert-Funktion mit double-Zahlen");
  for (double laufvariable = 10; laufvariable >= 1; laufvariable--) {
    double random = (double)random(0, 255);
    double invertNumber = (1.0 / random);
    System.out.printf(" %3.3f -> %1.3f \n", random, invertNumber);
  }
  println("");
}

/**
 * Methodenname: square
 * Datum         25.11.2022
 * Autor:        Khallouf
 * <B>Beschreibung: die multiplikation von zwei zufallswerten(short und int) erzeugen
 *
 */
void multiplikation() {
  println("multiply-Funktion mit short-Zahlen");
  for (short laufvariable = 10; laufvariable >= 1; laufvariable--) {
    short random = (short)random(0, 255);
    short secondRandom = (short)random(0, 1000);
    System.out.printf(" %3d * %3d = %6d\n", random, secondRandom, random*secondRandom);
  }
  println("");

  println("multiply-Funktion mit int-Zahlen");
  for (int laufvariable = 10; laufvariable >= 1; laufvariable--) {
    int random = (int)random(0, 1000);
    int secondRandom = (int)random(0, 1000);

    System.out.printf(" %3d * %3d = %6d\n", random, secondRandom, random*secondRandom);
  }
}
