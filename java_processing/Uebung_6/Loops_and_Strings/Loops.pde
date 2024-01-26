/**
 * Methodenname:    getFactorial
 * Datum:           02.12.22
 * Autor:           Khallouf
 * Beschreibung:    Berechnet die Fakulität mit einer Schleife
 * @param number    uebergebenen Zahl
 */
long getFactorial(long number) {
  long factorial = 1;
  for (int i = 1; i <= number; i++) {
    factorial *= i;
  }
  return factorial;
}

/**
 * Methodenname:    existWi
 * Datum:           02.12.22
 * Autor:           Khallouf
 * Beschreibung:    prueft nach, ob in dem uebergebenen String "wi" vorkommt, Groß-/Kleinschreibung spielt keine Rolle.
 * @param number    uebergebenen String
 */
boolean existWi(String anyText) {
  boolean bexistWi = false;

  if (anyText == null || anyText.length() == 0) {
    bexistWi = false;
  } else {
    anyText = anyText.toLowerCase();
    for (int i = 0; i < anyText.length() - 1; i++) {
      if (anyText.charAt(i) == 'w' && anyText.charAt(i+1) == 'i') {
        bexistWi = true;
        break;
      }
    }
  }
  return bexistWi;
}

/**
 * Methodenname:    count5or7
 * Datum:           02.12.22
 * Autor:           Khallouf
 * Beschreibung:    zaehlt nach, wie oft in dem uebergebenen int die Zahlen 5 oder 7 vorkommen.
 * @param eingabe   uebergebenen int
 */
int count5or7(int eingabe) {
  int counter=0;
  
  if(eingabe < 0){
    eingabe = -eingabe;
  }
  
  while (eingabe > 0) {
    int letzteZiffer = eingabe%10;
    if (letzteZiffer == 5 ||letzteZiffer == 7) {
      counter++;
    }
    eingabe = eingabe / 10;
  }

  return counter;
}

/**
 * Methodenname:    getCharCount
 * Datum:           02.12.22
 * Autor:           Khallouf
 * Beschreibung:    zaehlt nach, wie of in dem uebergebenen String Groß-/Kleinbuchstaben oder Ziffern vorkommen.
 * @param str       liefert die Anzahl gezaehlten ziffern zurueck
 * @param mode      0 = null oder leer | 1 = Großbuchstaben | 2 = Kleinbuchstaben | 3 = Ziffern | 4 = alle andere Zeichen
 */
int getCharCount(String str, int mode) {
  char character = ' ';
  int counter = 0;

  if (str == null || str.length() == 0) {
    mode = 0;
  } else {
    for (int i = 0; i < str.length(); i++) {
      character = str.charAt(i);
      if (mode == 1 && Character.isUpperCase(character)) {
        counter++;
      } else if (mode == 2 && Character.isLowerCase(character)) {
        counter++;
      } else if (mode == 3 && Character.isDigit(character)) {
        counter++;
      } else if (mode == 4 && !Character.isDigit(character) && !Character.isLetter(character)) {
        counter++;
      } else {
      }
    }
  }
  return counter;
}

/**
 * Methodenname:      getWithoutVowel
 * Datum:             02.12.22
 * Autor:             Khallouf
 * Beschreibung:      unterscheidet nach, ob die Groß-/Kleinbuchstaben geloescht werden.
 * @param oldString   uebergebenen String
 * @param bool        true = kleine Vokale werden geloescht | false = Große Vokale werden geloescht
 */
String getWithoutVowel(String oldString, boolean bool) {
  String newString = "";
  String smallVowels = "aeiou";
  String bigVowels = "AEIOU";
  char character;

  if (oldString == null || oldString.length() == 0) {
    bool = true;
  } else {
    int count;
    for (int i = 0; i < oldString.length(); i++) {
      count = 0;
      character = oldString.charAt(i);
      for (int k = 0; k < bigVowels.length(); k++) {
        if (bool == false && character == bigVowels.charAt(k)) {
          count++;
        } else if (bool == true && character == smallVowels.charAt(k)) {
          count++;
        }
      }
      if (count == 0) {
        newString += character;
      }
    }
  }
  return newString;
}

/*
 * Die Funktion mixString bekommt 2 Parameter vom Typ String.
 * Es werden abwechselnd von String1 und String2 die Zeichen
 * in einen neuen String kopiert. Der neue gemischte String wird
 * zurückgeliefert. Die übergebenen Strings können auch leer sein.
 * Außer length() und charAt() sind keine Bibliotheksfunktionen erlaubt.
 * Beispiele:
 *    mixString("Es", "geht") liefert "Egseht"
 *    mixString("Be", "ir")   liefert "Bier"
 *
 */

/**
 * Methodenname:      mixString
 * Datum:             02.12.22
 * Autor:             Khallouf
 * Beschreibung:      Es werden abwechselnd von String1 und String2 die Zeichen in einen neuen String kopiert
 * @param string1     uebergebenen String
 * @param string2     uebergebenen String
 */
String mixString(String string1, String string2) {
  int string1Len = string1.length();
  int string2Len = string2.length();
  String newString = "";
  //int length = string1.length() > string2.length() ?  string1.length() : string2.length();
  int length;
  if (string1.length() > string2.length()) {
    length = string1.length();
  } else {
    length = string2.length();
  }

  if (string1.length() == 0 || string2.length() == 0) {
    newString += string1 + string2;
  } else {
    for (int i = 0; i < length; i++) {
      if (i < string1Len) {
        newString += string1.charAt(i);
      }
      if (i < string2Len) {
        newString += string2.charAt(i);
      }
    }
  }
  return newString;
}

/*
 * Die Funktion repeatStart bekommt einen String und eine Zahl n als Parameter.
 * Entsprechend counter wird der Anfang der Strings in einen neuen String kopiert.
 * Dabei wird counter jedesmal um 1 dekrementiert. Der übergebene String kann auch leer sein.
 * Außer length() und substring() sind keine Bibliotheksfunktionen erlaubt.
 * Beispiele;
 *    repeatStart("Wodka", 3)         liefert "WodWoW"
 *    repeatStart("Mixxxer", 4)       liefert "MixxMixMiM"
 */
String repeatStart(String input, int number) {
  String newString = "";
  int counter = 0;

  for (int i = 0; i < input.length(); i++) {
    if (input.length() == number) {
      counter--;
      newString += input.charAt(i);
    }
  }
  return newString;
}

/*
 * Aus einem übegebenen String werden die Zeichen an den Stellen
 * 0,1  4,5  8,9  12,13... in einen neuen String kopiert und zurückgeliefert.
 * Auch hier kann der übergebene String leer sein.
 * Außer length() und substring() sind keine Bibliotheksfunktionen erlaubt.
 * Beispiele:
 *    getPairs("0123456789") liefert "014589"
 *    getPairs("abcdefghij") liefert "abefij"
 */
String getPairs(String altString) {
  String neuString = "";
  int altStringLen = altString.length();
  int position = 3;
  char ch;

  if (altString == null || altStringLen == 0) {
    neuString += altString;
  } else {
    for (int i = 0; i < altStringLen; i++) {
      ch = altString.charAt(i);
      if ((i % 3 == 0) ||(i % 3 == 6) || (i % 3 == 7)) {
        neuString += altString.charAt(i);
      }
    }
  }

  return neuString;
}

/*
 * Geben Sie eine neue Zeichenkette zurück, in der Zeichen durch ein neues Zeichen ersetzt werden .
 * Außer length() und charAt() sind keine Bibliotheksfunktionen erlaubt.
 * Beispiele:
 *
 * replaceChar("Monitor", 'o', 'a') -> "Manitar"
 */

/**
 * Methodenname:      replaceChar
 * Datum:             02.12.22
 * Autor:             Khallouf
 * Beschreibung:      Gibt eine neue Zeichenkette zurück, in der Zeichen durch ein neues Zeichen ersetzt werden
 * @param input       uebergebenen String
 * @param delete      geloeschter char
 * @param repalce     geänderter char
 */
String replaceChar(String input, char delete, char replace) {
  String newString = "";
  if (input == null || input.length() == 0) {
    return newString;
  } else {

    for (int i = 0; i < input.length(); i++) {
      if (input.charAt(i) == delete) {
        newString += replace;
      } else {
        newString += input.charAt(i);
      }
    }
  }
  return newString;
}

/**
 * Methodenname:      mixNumber
 * Datum:             02.12.22
 * Autor:             Khallouf
 * Beschreibung:      Es werden abwechselnd von zahl1 und zahl2 die Ziffern in eine neue Zahl kopiert. Die neue gemischte Zahl wird zurückgeliefert.
 * @param zahl1       uebergebenen zahl
 * @param zahl2       uebergebenen zahl
 */
int mixNumber(int zahl1, int zahl2) {
  String newNumber1 = Integer.toString(zahl1);
  String newNumber2 = Integer.toString(zahl2);

  int aLen = newNumber1.length();
  int bLen = newNumber2.length();
  String newString = "";

  int length;
  if (newNumber1.length() > newNumber2.length()) {
    length = newNumber1.length();
  } else {
    length = newNumber2.length();
  }

  if (newNumber1.length() == 0 || newNumber2.length() == 0) {
    newString += newNumber1 + newNumber2;
  } else {
    for (int i = 0; i < length; i++) {
      if (i <= aLen - 1) {
        newString += newNumber1.charAt(i);
      }
      if (i <= bLen - 1) {
        newString += newNumber2.charAt(i);
      }
      /*if(a.charAt(i) == '-'){
       word += a.charAt(i);
       }*/
    }
  }
  return parseInt(newString);
}

/*
 * Geben Sie eine neue Zeichenkette zurück, die keine direkt aufeinanderfolgende doppelten
 * Buchstaben enthält.
 * Nur die Bibliotheksfunktionen charAt() und length() sind erlaubt.
 * Beispiele:
 * delDoubleChar("Giraffe")     -> "Girafe"
 * delDoubleChar("Danger!!!")   -> "Danger!"
 */

/**
 * Methodenname:      delDoubleChar
 * Datum:             02.12.22
 * Autor:             Khallouf
 * Beschreibung:      löscht die buchstaben, die keine direkt aufeinanderfolgende vorkommen
 * @param eingabe     uebergebenen string
 */
String delDoubleChar(String eingabe) {
  String newString = "";

  if (eingabe == null || eingabe.length() == 0) {
    return newString;
  }

  char last = eingabe.charAt(0);
  char current;
  newString += last;

  for (int i = 1; i < eingabe.length(); i++) {
    current = eingabe.charAt(i);
    if (last != current) {
      newString += current;
    }
    last = current;
  }
  return newString;
}


/**
 * Methodenname:      delDoubleChar
 * Datum:             02.12.22
 * Autor:             Khallouf
 * Beschreibung:      zählt und addiert alle zahlen, die in einem String vorkommen
 * @param digit       uebergebenen string
 */
int countDigit(String digit) {
  int sum = 0;

  for (int i = 0; i < digit.length(); i++) {
    char character = digit.charAt(i);
    if (character >= '0' && character <= '9') {
      sum += character - '0';
    }
  }

  return sum;
}

/*
 * Diese Funktion ersetzt in einem übergebenen String alle Zeichen mit einem
 * beliebigen Zeichen (3. Parameter), außer die Zeichen, die im 2 Parameter stehen.
 * Nur die Bibliotheksfunktionen charAt() und length() sind erlaubt.
 * Beispiel:
 *    replaceWithWhatever("Hallo","ll", "-") liefert "--ll-"
 *    replaceWithWhatever("abcwpdwped","wp", "+") liefert "+++wp+wp++"
 */
String replaceWithWhatever(String input, String keep, String replace) {
  String neuString = "";

  if (input == null || input.length() == 0) {
    return neuString;
  }

  for (int i = 0; i < input.length(); i++) {
    if (input.equals(keep)) {
      neuString = keep;
    } else {
      neuString +=  replace;
    }
  }

  return neuString;
}

/**
 * Methodenname:      delDoubleChar
 * Datum:             02.12.22
 * Autor:             Khallouf
 * Beschreibung:      prüft nach, ob in einer Zeichenfolge ein Palindrom vorkommt
 * @param input       uebergebenen string
 * @param palindrom   true = Groß-/Kleinschreibung relevant | false = Groß-/Kleinschreibung nicht relevant
 */
boolean isPalindrom(String input, boolean palindrom) {
  boolean notPalindrome = false;
  String rev = "";
  if (input == null || input.length() == 0) {
    return notPalindrome;
  } else {
    for (int i = input.length() -1; i >= 0; i--) {
      rev += input.charAt(i);
    }
    if (palindrom == true && input.toLowerCase().equals(rev.toLowerCase())) {
      notPalindrome = false;
    } else {
      notPalindrome = true;
    }
    return notPalindrome;
  }
}

/*
 * Die Funktion testPassword soll ein Passwort bewerten. Das Passwort wird als String übergeben.
 * Die Funktion gibt true zurück, wenn das gegeben passwort mindestens
 * folgende Kriterien erfüllt:
 * - mindestens acht Zeichen lang
 * - mindestens zwei Buchstaben sind enthalten
 * - mindestens zwei Ziffern sind enthalten
 * - mindestens ein Gross- und ein Kleinbuchstaben sind enthalten
 * - mindestens ein Sonderzeichen kommt vor
 * Ein Sonderzeichen ist in dabei ein Zeichen, dass keine Ziffer oder Buchstabe eines Unicodealphabetes ist.
 * Die Funktion hat 4 Parameter;
 * - das Passwort
 * - vorgegebene Mindestlänge
 * - vorgegebene Mindestanzahl Buchstaben
 * - vorgegebene Mindestanzahl Ziffern
 * Außer length(), charAt(), isDigit(), isLowerCase(), isUpperCase() und isLetterOrDigit() sind keine
 * Bibliotheksfunktionen erlaubt.
 * Beispiele:
 *   testPassword("Ab345678", 8, 2, 2)     -> false (kein Sonderzeichen)
 *   testPassword("Ab34567!", 8, 2, 2)     -> true
 *   testPassword("södkfG1876!*",10,7,4)   -> false (nur 6 Buchstaben statt der geforderten 7)
 *   testPassword("södkfas1876!*",10,7,4)  -> false (Großbuchstabe fehlt)
 */
boolean testPassword(String password, int mindestLeange, int mindestAnzahlBuchstaben, int mindestAnzahlZiffern) {
  int digit = 0;
  int special = 0;
  int upCount = 0;
  int lowCount = 0;
  boolean bool = false;
  char ch;

  if (password == null || password.length() == 0) {
    return false;
  }

  for (int i = 0; i < password.length(); i++) {
    ch = password.charAt(i);
    if (Character.isLowerCase(ch)) {
      lowCount++;
    } else if (Character.isDigit(ch)) {
      digit++;
    } else if (Character.isUpperCase(ch)) {
      upCount++;
    } else {
    }
  }
  int buchstaben = upCount + lowCount;
  special = password.length() - (buchstaben + digit);

  if ( password.length() >= mindestLeange && buchstaben >= mindestAnzahlBuchstaben && upCount >= 1 && lowCount >= 1 && digit >= mindestAnzahlZiffern && special >= 1) {
    bool = true;
  }


  return bool;
}
