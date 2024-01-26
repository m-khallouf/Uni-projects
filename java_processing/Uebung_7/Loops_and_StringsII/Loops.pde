/* //<>//
 * Die Funktion isTautogramm() prüft, ob es sich bei dem übergebenen String um ein sogenanntes
 * Tautogramm handelt. Bei einem Tautogramm hat jedes Wort den gleichen Anfangsbuchstaben.
 * Der String kann auch null oder leer sein. Es sind nur die Bibliotheksfunktionen
 * toLowerCase(), length() und charAt() erlaubt. In den Testfällen sind die einzelnen Worte
 * immer durch ein Leerzeichen getrennt. Die Funktion ist nicht casesensitiv.
 * Beispiele:
 * isTautogramm("Veni vidi vici")                                                                           -> true
 * isTautogramm("Milch macht müde Männer munter")                                                           -> true
 * isTautogramm("Wir Wiener Waschweiber würden weiße Wäsche waschen wenn wir wüssten wo warmes Wasser wär") -> true
 * isTautogramm("Kleine Kinder können keine kleinen Kirschkerne ka... ne essen")                            -> false
 *
 */

/**
 * Methodenname:        convertDez2Dual
 * Datum:               09.12.22
 * Autor:               Khallouf
 * Beschreibung:        wandelt Dezimalzahl in Binaerzahl um
 * @param decimal       uebergebenen int
 * @return newString    zurueckgegebener String als Dualzahl
 */
int convertDez2Dual(int decimal) {
  String newString = "";
  int[] binary = new int[255];

  if (decimal < 0) {
    decimal = abs(decimal);
  }

  int i = 0;
  while (decimal > 0) {
    binary[i] = decimal % 2;
    decimal = decimal / 2;
    i++;
  }

  int bin = 0;
  for (int j = i - 1; j >= 0; j--) {
    bin = bin * 10 + binary[j];
    newString += bin;
  }
  return bin;
}
 
/**
 * Methodenname:        convertBin2Dez
 * Datum:               09.12.22
 * Autor:               Khallouf
 * Beschreibung:        wandelt Binaerzahl in Dezimalzahl um
 * @param decimal       uebergebenen int
 * @return result       zurueckgegebener int als Dualzahl
 */ 
int convertBin2Dez(String str) {
  int result = 0;
  
  if (result < 0) {
    result += abs(result);
  }

  for (int i = 0; i < str.length(); i++) {
    if (str.charAt(i) == '1') {
      result += Math.pow(2, str.length() - 1 - i);
    }
  }
  return result;
}
 
/**
 * Methodenname:        getCrossSum
 * Datum:               09.12.22
 * Autor:               Khallouf
 * Beschreibung:        berechnet die Quersumme von byte-zahl
 * @param number        uebergebenen byte-zahl
 * @return result       zurueckgegebener byte
 */  
short getCrossSum(byte number) {
  byte result = 0;

  while (number != 0) {
    if (number > 0) {
      result = (byte)(result + number % 10);
      number = (byte)(number / 10);
    } else {
      number = (byte)abs(number);
    }
  }

  return result;
}

/**
 * Methodenname:        getCrossSum
 * Datum:               09.12.22
 * Autor:               Khallouf
 * Beschreibung:        berechnet die Quersumme von short-zahl
 * @param number        uebergebenen short-zahl
 * @return result       zurueckgegebener short
 */  
short getCrossSum(short number) {
  short result = 0;

  while (number != 0) {
    if (number > 0) {
      result = (short)(result + number % 10);
      number = (short)(number / 10);
    } else {
      number = (short)abs(number);
    }
  }
  return result;
}

/**
 * Methodenname:        getCrossSum
 * Datum:               09.12.22
 * Autor:               Khallouf
 * Beschreibung:        berechnet die Quersumme von long-zahl
 * @param number        uebergebenen long-zahl
 * @return result       zurueckgegebener short
 */
short getCrossSum(long number) {
  short result = 0;

  while (number != 0) {
    if (number > 0) {
      result = (short)(result + number % 10);
      number = number / 10;
    } else {
      number = (long)abs(number);
    }
  }
  return result;
}

/**
 * Methodenname:        getCrossSum
 * Datum:               09.12.22
 * Autor:               Khallouf
 * Beschreibung:        berechnet die Quersumme von zahlen der in einem String vorkommen
 * @param text          uebergebenen String
 * @return result       zurueckgegebener short
 */
short getCrossSum(String text) {
  short result = 0;

  if (text == null || text.length() == 0) {
    return result;
  }

  for (int i = 0; i < text.length(); i++) {
    char character = text.charAt(i);
    if (character >= '0' && character <= '9') {
      result += character - '0';
    }
  }
  return result;
}

/**
 * Methodenname:        getMaxBlock
 * Datum:               09.12.22
 * Autor:               Khallouf
 * Beschreibung:        liefert die laenge des groessten zusammenhaengenden Blocks mit gleichen Zeichen zurueck
 * @param number        uebergebenen String
 * @return max          zurueckgegebener groesste Block
 */
int getMaxBlock(String input) {

  int zero = 0;
  if (input == null || input.length() == 0) {
    return zero;
  }
  int counter = 1;
  int max = 0;

  for (int i = 1; i < input.length(); i++) {
    if (input.charAt(i-1) == input.charAt(i)) {
      counter++;
      if (counter>max) {
        max=counter;
      }
    } else {
      counter = 1;
    }
  }
  return max;
}

/**
 * Methodenname:        endsWith
 * Datum:               09.12.22
 * Autor:               Khallouf
 * Beschreibung:        ueberprueft nach, ob ein String mit einem anderen Strin endet
 * @param str1          uebergebenen erster String
 * @param str2          uebergebenen zweiter String
 * @return bEndsWith    true -> funktion ist casesensitiv
 *                      false -> funktion nicht casesensitiv
 */
boolean endsWith(String str1, String str2, boolean bool) {
  boolean bEndsWith = false;
  if (str1 == null || str1.length() == 0 || str2 == null || str2.length() == 0) {
    return true;
  }
  
  if(bool == true){
    str1 = str1.toLowerCase();
    str2 = str2.toLowerCase();
    bEndsWith = false;
  } else {
  
    for (int i = 0; i < str1.length(); i++) {
      for (int j = 0; j < str2.length(); j++) {
        char ch = str1.charAt(i);
        char ch2 = str2.charAt(j);
        if (ch < ch2 && ch != ch2) {
          bEndsWith = false;
        } else {
          bEndsWith = true;
        }
      }
    }
  }
  return bEndsWith;
}


/*
 * Die Funktion isPangramm() erhält einen String als Parameter. Es wird geprüft,
 * ob es sich bei diesem String um ein sogenanntes Pangramm handelt.
 * Ein Pangramm ist ein Satz, der alle Buchstaben des Alphabets enthält.
 * Die Funktion ist nicht Casesensitiv, d.h. Groß-/Kleinschreibung ist
 * unerheblich. Nur das normale Alphabet, also ohne Umlaute und ohne ß,
 * ist zu beachten. Der String kann auch null oder leer sein.
 * Es sind nur die Bibliotheksfunktionen length(), toUpperCase() und charAt() erlaubt.
 * Beispiele:
 * isPangramm("Hallo Welt")                                               liefert false
 * isPangramm("Jeder wackere Bayer vertilgt bequem zwo Pfund Kalbshaxen") liefert true
 *
 */

/**
 * Methodenname:        isPangramm
 * Datum:               09.12.22
 * Autor:               Khallouf
 * Beschreibung:        ueberprueft nach, ob es in einen String alle Buchstaben des Alphabets enthaelt (Pangramm genannt)
 * @param text          uebergebenen String
´* @return              true -> funktion ist Pangramm
 *                      false -> funktion kein Pangramm
 */
boolean isPangramm(String text) {
  boolean[] letters = new boolean[26];
  int index = 0;
  
  if (text == null || text.length() == 0) {
    return false;
  }

  for (int i = 0; i < text.length(); i++) {
    if ('A' <= text.charAt(i) && text.charAt(i) <= 'Z') {
      index = text.charAt(i) - 'A';
    } else if ('a' <= text.charAt(i) && text.charAt(i) <= 'z') {
      index = text.charAt(i) - 'a';
    } else
      continue;
    letters[index] = true;
  }

  for (int i = 0; i <= 25; i++) {
    if (letters[i] == false) {
      return false;
    }
  }
  return true;
}

/**
 * Methodenname:        checkBrackets
 * Datum:               09.12.22
 * Autor:               Khallouf
 * Beschreibung:        ueberprueft nach, ob in einem übergebenen String die folgende Klammerung vorkommen
 *                      - ()
 *                      - []
 *                      - {}
 *                      - <>
 * @param input         uebergebenen String
´* @return              true -> Bedinung ist wahr
 *                      false -> Bedinung ist falsch
 */
boolean checkBrackets(String input) {
  int roundBrackt1 = 0;
  int roundBrackt2 = 0;
  int squareBracket1 = 0;
  int squareBracket2 = 0;
  int curlyBracket1 = 0;
  int curlyBracket2 = 0;
  int graterThan = 0;
  int lessThan = 0;


  if (input == null || input.length() == 0) {
    return true;
  }

  for (int i = 0; i < input.length(); i++) {
    if (input.charAt(i) == '(') {
      roundBrackt1++;
    } else if (input.charAt(i) == ')') {
      roundBrackt2++;
    } else if (input.charAt(i) == '[') {
      squareBracket1++;
    } else if (input.charAt(i) == ']') {
      squareBracket2++;
    } else if (input.charAt(i) == '{') {
      curlyBracket1++;
    } else if (input.charAt(i) == '}') {
      curlyBracket2++;
    } else if (input.charAt(i) == '>') {
      graterThan++;
    } else if (input.charAt(i) == '<') {
      lessThan++;
    }
  }

  if (roundBrackt1 != roundBrackt2 || squareBracket1 != squareBracket2 || curlyBracket1 != curlyBracket2 || graterThan != lessThan) {
    return false;
  }
  return true;
}

/**
 * Methodenname:        checkBracketsWC
 * Datum:               09.12.22
 * Autor:               Khallouf
 * Beschreibung:        ueberprueft nach, ob in einem übergebenen String die folgende Klammerung vorkommen
 */
 //                     - /* */
 /**
 * @param input         uebergebenen String
´* @return              true -> Bedinung ist wahr
 *                      false -> Bedinung ist falsch
 */
boolean checkBracketsWC(String input) {
  int count = 0;
  if (input == null || input.length() == 0) {
    return true;
  }

  for (int i = 0; i < input.length(); i++) {
    if (input.charAt(i) == '/' || input.charAt(i) == '*' || input.charAt(i) == '*' || input.charAt(i) == '/') {
      count++;
    }
  }
  if (count != 0 && count % 4 == 0) {
    return true;
  }


  return false;
}

/**
 * Methodenname:        isVowel
 * Datum:               09.12.22
 * Autor:               Khallouf
 * Beschreibung:        gibt true zurueck wenn es ein Vokal vorkommt
 * @param character     uebergebenen char
´* @return              true -> Bedinung ist wahr
 *                      false -> Bedinung ist falsch
 */
boolean bIsVowel;
char ch = ' ';
boolean isVowel(char character) {
  if (ch == 'A' || ch == 'E' || ch == 'I' || ch == 'O' || ch == 'U' || ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
    return true;
  } 
  return false;
}
/**
 * Methodenname:        stringSort
 * Datum:               09.12.22
 * Autor:               Khallouf
 * Beschreibung:        sortiert die Zeichen von 2 übergebenen Strings
 * @param character     uebergebener erster String
 * @param character     uebergebener zweiter String
´* @return newString2   zurueckgegebener String
 */
String stringSort(String str1, String str2) {
  String newString1 = "";
  String newString2 = "";
  isVowel(ch);

  if (str1 == null || str1.length() == 0 || str2 == null || str2.length() == 0) {
    return newString1;
  }
  if (bIsVowel == true) {
    for (int i = 0; i < str1.length(); i++) {
      for (int j = 0; j < str2.length(); j++) {
        if (Character.toLowerCase(str1.charAt(i)) == ch) {
          newString2 += str1.charAt(i);
        } else if (Character.toLowerCase(str2.charAt(j)) == ch) {
          newString2 += str1.charAt(j);
        } else {
          continue;
        }
      }
    }
  }

  return newString2;
}

/**
 * Methodenname:        getISBN
 * Datum:               09.12.22
 * Autor:               Khallouf
 * Beschreibung:        Die Funktion bekommt eine unfertige ISBN 10-Nummer, die fehlenden Prüfziffer muss an den String angehängt und zurückgeliefert werden.
 *                      Die einzelnen Ziffern werden mit den Zahlen von 1 - 9 multipliziert und aufaddiert. Das Ergebnis wird mit modulo 11 geteilt. 
 *                      Ist der Rest eine 10, so wird die Prüfziffer X, sonst der Rest.
 * @param isbn          uebergebenen String
´* @return newString    zurueckgegebenen String
 */
String getISBN(String isbn) {
  String newString = "";
  int counter = 0;
  int sum = 0;
  String result = "";
  int ergebnis;


  if (isbn == null || isbn.length() == 0) {
    return newString;
  }

  for (int i = 0; i < isbn.length(); i++) {
    if (isbn.charAt(i) >= '1' || isbn.charAt(i) <= '9') {
      counter++;
    }

    if (counter == 1) {
      sum += isbn.charAt(i) * 1;
    } else if (counter == 2) {
      sum += isbn.charAt(i) * 2;
    } else if (counter == 3) {
      sum += isbn.charAt(i) * 3;
    } else if (counter == 4) {
      sum += isbn.charAt(i) * 4;
    } else if (counter == 5) {
      sum += isbn.charAt(i) * 5;
    } else if (counter == 6) {
      sum += isbn.charAt(i) * 6;
    } else if (counter == 7) {
      sum += isbn.charAt(i) * 7;
    } else if (counter == 8) {
      sum += isbn.charAt(i) * 8;
    } else if (counter == 9) {
      sum += isbn.charAt(i) * 9;
    }

    if (sum % 11 == 10) {
      isbn += "X";
      isbn += result;
    } /*else {
     ergebnis = sum % 11;
     isbn += ergebnis;
    }*/
  }
  return isbn;
}


/*
 * Die Funktion checkIdCard() bekommt eine unfertige IDD-Nummer.
 * Die fehlenden Prüfziffer muss an den String angehängt und zurückgeliefert werden.
 * Diese IDD-Nummer finden Sie auf Ihrem Personalausweis.
 * Auf der Vorderseite oben rechts ohne Prüfziffer, auf der Rückseite unten mit Prüfziffer.
 * Die Berechnung der Prüfziffer läuft nach folgendem Schema:
 * Die Buchstaben werden durch Ziffern ersetzt. Für A setzt man 10, für B die 11 usw...
 * Für Z setzt man dann die 35.
 * Berechnung für T22000129
 * Ausweisnummer   Ziffer   Multiplikator   Produkt
 *    T             29         7             203
 *    2              2         3               6
 *    2              2         1               2
 *    0              0         7               0
 *    0              0         3               0
 *    0              0         1               0
 *    1              1         7               7
 *    2              2         3               6
 *    9              9         1               9
 *                                   Summe   233
 * Die letzte Ziffer dieser Summe ist die Prüfziffer, also die 3
 * Der String kann auch null oder leer sein. Es sind nur die Bibliotheksfunktionen length() und charAt() erlaubt.
 * Beispiele:
 * checkIdCard("T22000129") -> "T220001293"
 * checkIdCard("LZ6311T47") -> "LZ6311T475"
 *
 */
