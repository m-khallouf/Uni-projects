// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:        17.11.22
// Beschreibung: Verschieden schleifen probierben und in anderer schleifen umformen

void setup() {
  size(10, 10);
  int laufvariable;
  int zeile;

  print("Ausgabe mit for / while / do while\n");

  //Ausgabe mit for schleife
  System.out.printf("FOR\n");
  for (laufvariable = 1, zeile = 1; laufvariable <=5; laufvariable++, zeile++) {
    System.out.printf(" %s. Zeile: Programmieren Praktikum\n", laufvariable, zeile);
  }

  println("");

  //Ausgabe mit while schleife
  laufvariable = 1;
  zeile = 1;
  System.out.printf("WHILE\n");
  while (laufvariable <= 5) {
    System.out.printf(" %s. Zeile: Programmieren Praktikum\n", laufvariable, zeile);
    laufvariable++;
  }

  println("");

  //Ausgabe mit do-while schleife
  System.out.printf("DO WHILE\n");
  laufvariable = 1;
  zeile = 1;
  do {
    System.out.printf(" %s. Zeile: Programmieren Praktikum\n", laufvariable, zeile);
    laufvariable++;
  } while (laufvariable <= 5);

  println("");

  print("Ausgabe mit for / while / do while - RÜCKWÄRTS\n");

  //Ausgabe mit for schleife  for (laufvariable = 1, zeile = 1; laufvariable <=5; laufvariable++, zeile++)
  System.out.printf("FOR\n");
  for (laufvariable = 5, zeile = 1; laufvariable >=1; laufvariable--, zeile++) {
    System.out.printf(" %s. Zeile: Programmieren Praktikum\n", laufvariable, zeile);
  }

  System.out.printf("\n");

  //Ausgabe mit while schleife
  laufvariable = 5;
  zeile = 1;
  System.out.printf("WHILE\n");
  while (laufvariable >=1) {
    System.out.printf(" %s. Zeile: Programmieren Praktikum\n", laufvariable, zeile);
    laufvariable--;
  }

  System.out.printf("\n");

  //Ausgabe mit do-while schleife
  System.out.printf("DO WHILE\n");
  laufvariable = 5;
  zeile = 1;
  do {
    System.out.printf(" %s. Zeile: Programmieren Praktikum\n", laufvariable, zeile);
    laufvariable--;
  } while (laufvariable >=1);

  println("");

  //String rueckwaerts ausgedrueckt
  String normalString= "Programmien Praktikum", Stringbackwards="";
  char singleCharacter;

  println("Porgrammien Praktikum - zeichnweise rückwärts");

  for (int i = 0; i < normalString.length(); i++) {
    //extrahiert jedes Zeichen
    singleCharacter= normalString.charAt(i);
    //fügt jedes Zeichen vor der vorhandenen Zeichenfolge hinzu
    Stringbackwards= singleCharacter + Stringbackwards;
  }
  println(Stringbackwards);

  println("");

  //Das Einmaleins
  for (int i = 1; i <= 10; i++) {
    for (int j = 1; j<= 10; j++) {
      System.out.printf("%2d * %2d = %3d\t", i, j, i * j);
    }
  }
  println("");

  //Modulo
  println("");
  println("Welche Zahlen von 1 bis 30 sind duch 3 oder 5 ohne Rest teilbar?");

  int counterDrei=0, counterFunf=0, counterBeide=0;
  for (int a = 1; a <= 30; a++) {
    if (a % 5 == 0 && a % 3 == 0) {
      println("drei und fünf");
      counterBeide++;
      counterFunf++;
      counterDrei++;
    } else if (a % 5 == 0) {
      println("fünf");
      counterFunf++;
    } else if (a % 3 == 0) {
      println("drei");
      counterDrei++;
    } else {
      println(a);
    }
  }

  println("% 3 ohne Rest: " + counterDrei);
  println("% 5 ohne Rest: " + counterFunf);
  println("% 5 und 3 ohne Rest: " + counterBeide);

  println("");

  println("Narzistische Zahlen (oder Armstrongzahlen) von 1 bis 100.00");

  for (int i = 1; i < 100000; i++) {
    int sum = 0, n = i, digit;
    //wandelt Integer in String um
    int len = Integer.toString(i).length();
    while (n != 0) {
      digit = n%10;
      sum += (int)Math.pow(digit, len);
      n /= 10;
    }
    if (sum == i) {
      System.out.printf("%-6d", i);
    }
  }  
}

void draw(){
}
