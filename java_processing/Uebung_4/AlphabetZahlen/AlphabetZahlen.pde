// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:        17.11.22
// Beschreibung: Buchstaben und Zahlen Vorwaretz/ Rueckwaertz ausgeben

boolean bigLetters, smallLetters, numbers, allBackwards, allHorizontal, deleteAll, aa = true;
int breite, hoehe;
char buchstabe;

void setup() {
  size(800, 800);
}

void draw() {
  background(0);
  textSize(30);
  text("(A) - grosses Alphapet", 500, 25);
  text("(a) - kleines Alphapet", 500, 54);
  text("(z) - zahlen", 500, 83);
  text("(r) - alles rückwärts", 500, 114);
  text("(w) - alles waagrecht", 500, 140);
  text("(l) - alles löschen", 500, 165);

  //Groesse Alphapet taste
  textSize(20);
  if (bigLetters == true) {
    breite = 20;
    hoehe = 20;
    for (buchstabe = 'A'; buchstabe <= 'Z'; buchstabe++) {
      text(buchstabe, breite, hoehe);
      hoehe += 20;
    }
    fill (100, 100, 255);
    textSize(30);
    text("(A) - grosses Alphapet", 500, 25);
    fill(255);
  }
  //Kleine Alphapet taste
  textSize(20);
  if (smallLetters == true) {
    breite = 120;
    hoehe = 20;
    for (buchstabe = 'a'; buchstabe <= 'z'; buchstabe++) {
      text(buchstabe, breite, hoehe);
      hoehe += 20;
    }
    fill (100, 100, 255);
    textSize(30);
    text("(a) - kleines Alphapet", 500, 54);
    fill(255);
  }
  //Zahlen taste
  textSize(20);
  if (numbers == true) {
    breite = 220;
    hoehe = 20;
    for (int i = 0; i<= 9; i++) {
      text(i, breite, hoehe);
      hoehe += 20;
    }
    fill (100, 100, 255);
    textSize(30);
    text("(z) - zahlen", 500, 83);
    fill(255);
  }


  //alles rückwärts taste
  textSize(20);
  if (allBackwards == true) {
    // alles rückwärts für kleine buchstaben
    breite = 70;
    hoehe = 20;

    buchstabe = 'z';
    while (buchstabe >= 'a') {
      text(buchstabe, breite, hoehe);
      hoehe += 20;
      buchstabe--;
    }

    fill (100, 100, 255);
    textSize(30);
    text("(r) - alles rückwärts", 500, 114);
    fill(255);

    // alles rueckwaerts für groesse buchstaben
    textSize(20);
    breite = 170;
    hoehe = 20;

    buchstabe = 'Z';
    while (buchstabe >= 'A') {
      text(buchstabe, breite, hoehe);
      hoehe += 20;
      buchstabe--;
    }

    fill (100, 100, 255);
    textSize(30);
    text("(r) - alles rückwärts", 500, 114);
    fill(255);

    // alles rueckwaerts für zahlen
    textSize(20);
    breite = 270;
    hoehe = 20;

    int j = 9;
    while (j>= 0) {
      text(j, breite, hoehe);
      hoehe += 20;
      j--;
    }
    fill (100, 100, 255);
    textSize(30);
    text("(r) - alles rückwärts", 500, 114);
    fill(255);
  }

  //alles waagerecht taste
  textSize(20);
  if (allHorizontal == true) {
    textSize(20);
    breite = 20;
    hoehe = 600;

    buchstabe = '`';
    do {
      buchstabe++;
      text(buchstabe, breite, hoehe);
      breite += 20;
    } while (buchstabe <= 'y');

    fill (100, 100, 255);
    textSize(30);
    text("(w) - alles waagrecht", 500, 140);
    fill(255);

    textSize(20);
    breite = 20;
    hoehe = 630;

    buchstabe = '@';
    do {
      buchstabe++;
      text(buchstabe, breite, hoehe);
      breite += 20;
    } while (buchstabe <= 'Y');


    fill (100, 100, 255);
    textSize(30);
    text("(w) - alles waagrecht", 500, 140);
    fill(255);

    textSize(20);
    breite = 20;
    hoehe = 660;

    int i = 0;
    do {
      i++;
      text(i, breite, hoehe);
      breite += 20;
    } while (i<= 9);

    fill (100, 100, 255);
    textSize(30);
    text("(w) - alles waagrecht", 500, 140);
    fill(255);
  }
  
  //alles loeschen taste
  if (deleteAll) {
    background(0);
    deleteAll = false;
    bigLetters = false;
    smallLetters = false;
    numbers = false;
    allBackwards = false;
    allHorizontal = false;

    textSize(30);
    text("(A) - grosses Alphapet", 500, 25);
    text("(a) - kleines Alphapet", 500, 54);
    text("(z) - zahlen", 500, 83);
    text("(r) - alles rückwärts", 500, 114);
    text("(w) - alles waagrecht", 500, 140);
    text("(l) - alles löschen", 500, 165);
  }
}

void keyPressed() {
  if (key == 'A') bigLetters = true;
  if (key == 'a') smallLetters = true;
  if (key == 'z') numbers = true;
  if (key == 'r') allBackwards = true;
  if (key == 'w') allHorizontal = true;
  if (key == 'l') deleteAll = true;
}
