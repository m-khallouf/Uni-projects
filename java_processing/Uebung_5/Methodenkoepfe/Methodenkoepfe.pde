// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:
// Beschreibung:


void setup() {
  println("getMin-Funktion mit long-Zahlen");
  getMin();

  println("");
  println("getRange-Funktion mit float-Zahlen");
  getRang(3.7);

  println("");
  println("getArea-Funktion mit float-Zahlen");
  getArea();

  println("");
  println("getAreaCuboid-Funktion mit short-Zahlen");
  getAreaCuboid();

  println("");
  println("delChar-Funktion");
  delChar("Dies ist ein Test!", (byte)3);
  delChar("Dies ist ein Test!", (byte)2);
}

void draw() {
}

/**
 * Methodenname: getMin
 * Datum         25.11.2022
 * Autor:        Khallouf
 * <B>Beschreibung: Bestimmen des Minimums von drei zufaellige ganzen Zahlen mit der datenTyp long
 *
 */
void getMin() {
  for (long laufvariable = 1; laufvariable <= 10; laufvariable++) {
    long random = (long)random(0, 255);
    long secondRandom = (long)random(0, 255);
    long thirdRandom = (long)random(0, 255);
    System.out.printf("getMin(%4d, %4d, %4d) -> %4d \n", random, secondRandom, thirdRandom, Math.min(Math.min(random, secondRandom), thirdRandom));
  }
}

/**
 * Methodenname: getrang
 * Datum         25.11.2022
 * Autor:        Khallouf
 * <B>Beschreibung: rechnet der Flaeche eines kreises von datenTyp float
 *
 */
double getRang(float radius){
  float umfang = (float)(Math.PI * 2 * radius);
  for (int laufvariable = 1; laufvariable <= 10; laufvariable++) {
    System.out.printf("getRange(%.2f) -> %.2f \n", radius, umfang);
  }
  return radius;
}

/**
 * Methodenname: getArea
 * Datum         25.11.2022
 * Autor:        Khallouf
 * <B>Beschreibung: die Berechnung der Fläche von einem beliebigen Trapez mit der datenTyp float
 *
 */
void getArea() {
  for (float laufvariable = 1; laufvariable <= 10; laufvariable++) {
    float smallBasea = (float)random(0, 255);
    float bigBasea = (float)random(0, 255);
    float hoehe = (float)random(0, 255);
    float area = ((smallBasea + bigBasea) / 2) * hoehe;

    System.out.printf("getArea(%1.1f, %1.1f, %1.1f) -> %1.1f \n", smallBasea, bigBasea, hoehe, area);
  }
}

/**
 * Methodenname: getAreaCuboid
 * Datum         25.11.2022
 * Autor:        Khallouf
 * <B>Beschreibung: die Berechnung der Fläche von einem beliebigen Quaders mit der datenTep short
 *
 */
void getAreaCuboid() {

  short laufvariable = 0;
  while (laufvariable <= 9) {
    short a = (short)random(0, 1000);
    short b = (short)random(0, 1000);
    short c = (short)random(0, 1000);
    short area = (short)((2 * a * b) + (2 * a * c) + (2 * b * c));

    System.out.printf("getAreaCuboid(%3d, %3d, %3d) -> %6d \n", a, b, c, area);
    laufvariable++;
  }
}

/**
 * Methodenname: delChar
 * Datum         25.11.2022
 * Autor:        Khallouf
 * <B>Beschreibung: loescht ein char an beliebegen stelle
 *
 */
String delChar(String altString, byte eingabe) {
  altString = "Dies ist ein Test!";
  String neuString = "";

  for (int i = 0; i < altString.length(); i++){
    if ( i % eingabe != 0){
      neuString += altString.charAt(i);
    }
  }
  System.out.printf("delChar(\"%s, %d\") -> \"%s\" \n", altString, eingabe, neuString);
 
  return neuString;
}
