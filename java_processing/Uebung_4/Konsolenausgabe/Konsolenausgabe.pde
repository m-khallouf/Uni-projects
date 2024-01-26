// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:        17.11.22
// Beschreibung: Wissen fragen



boolean allow = false;

if (allow = true) {
  println("value is true");
} else {
  println("value is false");
}

int score = 110;
if (score > 200) {
  if (score < 400) {
    if (score > 300) {
      println(1);
    } else {
      println(2);
    }
  }
} else {
  println(3);
}

if (score > 200)
  if (score < 400)
    if (score > 300)
      println(1);
    else
      println(2);
  else
    println(3);

score = 110;
if (score > 200) {
  if (score < 400)
    if (score > 300)
      println(1);
    else
      println(2);
} else
  println(3);


/**
 * Antwort zu 1: hier ist wahr, weil es nach der Referenz und nicht nach dem Wert gefragt wird.
 * Anwort zu 2:
 */
