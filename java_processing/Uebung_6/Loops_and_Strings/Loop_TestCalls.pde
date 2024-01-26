// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!! //<>// //<>//
// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!!
// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!!

/**
 * Methodenname:   testLoops
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Ruft die einzelnen Testfunktionen für die implementierten Funktionen auf
 */
void testLoops() {
  textHeadline("Testfälle für Schleifen-/Stringübungen", false);
  testgetFactorial();
  testexistWi();
  testCount5or7();
  testGetCharCount();
  testGetWithoutVowel();
  testmixString();
  testrepeatStart();
  testgetPairs();
  testreplaceChar();
  testmixNumber();
  testdelDoubleChar();
  testcountDigit();
  testreplaceWithWhatever();
  testisPalindrom();
  testtestPassword();
}


/**
 * Methodenname:   testgetFactorial
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Fakultätsberechnung wird mit den hinterlegten Testfällen getestet
 */
void testgetFactorial() {
  textHeadline("Tests mit getFactorial");
  if (bgetFactorial) {
    for (int i = 0; i < tf_getFactorial.length; i++) {
      long result = getFactorial(tf_getFactorial[i][0]);
      System.out.printf("getFactorial(%2d):\t %7d - Erwartet %7d -> ",
        tf_getFactorial[i][0],
        result,
        tf_getFactorial[i][1]);
      okOrError(result == tf_getFactorial[i][1]);
    }
  } else
    skull();
}


/**
 * Methodenname:   testGibtEsWi
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Die Funktion existWi wird mit den hinterlegten Testfällen geprüft.
 */
void testexistWi() {
  textHeadline("Tests mit existWi");
  if (bexistWi_done) {
    for (int i = 0; i < tf_existWi.length; i++) {
      boolean result = existWi(tf_existWi[i].ersteZeichenfolge);
      System.out.printf("existWi(%c%s%c):%s\t %5b - Erwartet %5b -> ",
        (tf_existWi[i].ersteZeichenfolge==null ? ' ' : '\"'),
        tf_existWi[i].ersteZeichenfolge,
        (tf_existWi[i].ersteZeichenfolge==null ? ' ' : '\"'),
        fillString(20-(tf_existWi[i].ersteZeichenfolge==null ? 0: tf_existWi[i].ersteZeichenfolge.length()), " "),
        result,
        tf_existWi[i].bExpected_or_Direction);
      okOrError(result == tf_existWi[i].bExpected_or_Direction);
    }
  } else
    skull();
}


/**
 * Methodenname:   testCount5or7
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Die Funktion count5or7 wird mit den hinterlegten Testfällen geprüft.
 */
void testCount5or7() {
  textHeadline("Tests mit count5or7");
  if (bcount5or7_done) {
    for (int i = 0; i < tf_count5or7.length; i++) {
      int result = count5or7(tf_count5or7[i][0]);
      System.out.printf("count5or7(%d):%s\t %3d - Erwartet %3d -> ",
        tf_count5or7[i][0],
        fillString(15, " "),
        result,
        tf_count5or7[i][1]);
      okOrError(result == tf_count5or7[i][1]);
    }
  } else
    skull();
}


/**
 * Methodenname:   testGetCharCount
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Die Funktion getCharCount wird mit den hinterlegten Testfällen geprüft.
 */
void testGetCharCount() {
  textHeadline("Tests mit getCharCount");
  if (bgetCharCount_done) {
    for (int i = 0; i < tf_getCharCount.length; i++) {
      int result = getCharCount(tf_getCharCount[i].ersteZeichenfolge, tf_getCharCount[i].ersteZahl);
      System.out.printf("getCharCount(%c%-45s%c, %d):%s\t %3d - Erwartet %3d -> ",
        (tf_getCharCount[i].ersteZeichenfolge==null ? ' ' : '\"'),
        tf_getCharCount[i].ersteZeichenfolge,
        (tf_getCharCount[i].ersteZeichenfolge==null ? ' ' : '\"'),
        tf_getCharCount[i].ersteZahl,
       "" /*fillString(5 , " ")*/        ,
        result,
        tf_getCharCount[i].ergebnis);
      okOrError(result == tf_getCharCount[i].ergebnis);
    }
  } else
    skull();
}


/**
 * Methodenname:   testGetWithoutVowel
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Die Funktion getWithoutVowel wird mit den hinterlegten Testfällen geprüft.
 */
void testGetWithoutVowel() {
  textHeadline("Tests mit getWithoutVowel");
  if (bgetWithoutVowels_done){
    for(int i = 0; i < tf_getWithoutVowel.length ; i++){
      String result = getWithoutVowel(tf_getWithoutVowel[i].ersteZeichenfolge,tf_getWithoutVowel[i].bExpected_or_Direction);
      System.out.printf("getWithoutVowel(%c%s%c, %5b):%s \"%s\" - Erwartet \"%s\" -> ",
                         (tf_getWithoutVowel[i].ersteZeichenfolge==null ? ' ' : '\"'),
                         tf_getWithoutVowel[i].ersteZeichenfolge,
                         (tf_getWithoutVowel[i].ersteZeichenfolge==null ? ' ' : '\"'),
                         tf_getWithoutVowel[i].bExpected_or_Direction,
                         fillString(28-((tf_getWithoutVowel[i].ersteZeichenfolge==null? 4: tf_getWithoutVowel[i].ersteZeichenfolge.length())), " "),
                         result,
                         tf_getWithoutVowel[i].zweiteZeichenfolge);
      okOrError(result.equals(tf_getWithoutVowel[i].zweiteZeichenfolge));
    }
  }
  else
    skull();
}


/**
 * Methodenname:   testmixString
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Die Funktion mixString wird mit den hinterlegten Testfällen geprüft.
 */
void testmixString() {
  textHeadline("Tests mit mixString");
  if (bMixString_done) {
    for(int i = 0; i < tf_mixString.length ; i++){
      String result = mixString(tf_mixString[i][0],tf_mixString[i][1]);
      System.out.printf("mixString(\"%s\", \"%s\"):%s\t \"%s\" - Erwartet \"%s\" -> ",
                         tf_mixString[i][0],
                         tf_mixString[i][1],
                         fillString(30-tf_mixString[i][0].length()-tf_mixString[i][1].length(), " "),
                         result,
                         tf_mixString[i][2]);
      okOrError(result.equals(tf_mixString[i][2]));
    }
  } else
    skull();
}


/**
 * Methodenname:   testWiederholeAnfang
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Die Funktion repeatStart wird mit den hinterlegten Testfällen geprüft.
 */
void testrepeatStart() {
  textHeadline("Tests mit repeatStart");
  if (brepeatStart_done) {
    for(int i = 0; i < tf_repeatStart.length ; i++){
      String result = repeatStart(tf_repeatStart[i].ersteZeichenfolge,tf_repeatStart[i].ersteZahl);
      System.out.printf("repeatStart(\"%s\", %d):%s\t \"%s\" - Erwartet \"%s\" -> ",
                         tf_repeatStart[i].ersteZeichenfolge,
                         tf_repeatStart[i].ersteZahl,
                         fillString(10-((tf_repeatStart[i].ersteZeichenfolge==null? 4: tf_repeatStart[i].ersteZeichenfolge.length())), " "),
                         result,
                         tf_repeatStart[i].strErgebnis);
      okOrError(result.equals(tf_repeatStart[i].strErgebnis));
    }
  } else
    skull();
}


/**
 * Methodenname:   testgetPairs
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Die Funktion getPairs wird mit den hinterlegten Testfällen geprüft.
 */
void testgetPairs() {
  textHeadline("Tests mit getPairs");
  if (bGetPairs_done) {
    for(int i = 0; i < tf_getPairs.length; i++){
      String result = getPairs(tf_getPairs[i][0]);
      System.out.printf("getPairs(\"%s\"):%s\t \"%s\" - Erwartet \"%s\" -> ",
                         tf_getPairs[i][0],
                         (tf_getPairs[i][0] == null ? fillString(22," ") : fillString(32-tf_getPairs[i][0].length(), " ")),
                         result,
                         tf_getPairs[i][1]);
      okOrError(result.equals(tf_getPairs[i][1]));
    }
  } else
    skull();
}


/**
 * Methodenname:   testreplaceChar
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Das Ersetzen von Zeichen wird mit den hinterlegten Testfällen geprüft.
 */
void testreplaceChar() {
  textHeadline("Tests mit replaceChar");
  if (breplaceChar_done) {
    for (int i = 0; i < tf_replaceChar.length; i++) {
      String result = replaceChar(tf_replaceChar[i].ersteZeichenfolge, tf_replaceChar[i].erstesZeichen,tf_replaceChar[i].zweitesZeichen);
      System.out.printf("replaceChar(%c%s%c, \'%c\', \'%c\'):%s \"%s\"\t Erwartet \"%s\" -> ",
                        (tf_replaceChar[i].ersteZeichenfolge==null ? ' ' : '\"'),
                        tf_replaceChar[i].ersteZeichenfolge,
                        (tf_replaceChar[i].ersteZeichenfolge==null ? ' ' : '\"'),
                        tf_replaceChar[i].erstesZeichen,
                        tf_replaceChar[i].zweitesZeichen,
                        fillString(10-((tf_replaceChar[i].ersteZeichenfolge==null? 4: tf_replaceChar[i].ersteZeichenfolge.length())), " "),
                        result,
                        tf_replaceChar[i].strErgebnis);
      okOrError(result.equals(tf_replaceChar[i].strErgebnis));
    }
  } else
    skull();
}


/**
 * Methodenname:   testmixNumber
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Das Mischen von Zahlen wird mit den hinterlegten Testfällen getestet
 */
void testmixNumber() {
  textHeadline("Tests mit mixNumber");
  if (bmixNumber_done) {
    for (int i = 0; i < tf_mixNumber.length; i++) {
      long result = mixNumber(tf_mixNumber[i].ersteZahl, tf_mixNumber[i].zweiteZahl);
      System.out.printf("mixNumber(%6d,%6d):\t %10d - Erwartet %10d -> ", tf_mixNumber[i].ersteZahl,
        tf_mixNumber[i].zweiteZahl, result, tf_mixNumber[i].ergebnis);
      okOrError(result == tf_mixNumber[i].ergebnis);
    }
  } else
    skull();
}


/**
 * Methodenname:   testdelDoubleChar
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Das Löschen von doppelten Zeichen wird mit den hinterlegten Testfällen getestet
 */
void testdelDoubleChar() {
  textHeadline("Tests mit delDoubleChar");
  if (bdelDoubleChar_done) {
    for (int i = 0; i < tf_delDoubleChar.length; i++) {
      String result = delDoubleChar(tf_delDoubleChar[i][0]);
      System.out.printf("delDoubleChar(\"%s\"):%s\t \"%s\" - Erwartet \"%s\" -> ",
        tf_delDoubleChar[i][0],
        fillString(
        50 - (tf_delDoubleChar[i][0] == null ? 0 : tf_delDoubleChar[i][0].length()),
        " "),
        (result == null ? "null" : result), tf_delDoubleChar[i][1]);
      okOrError(result == null ? true : result.equals(tf_delDoubleChar[i][1]));
    }
  } else
    skull();
}


/**
 * Methodenname:   countDigit
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Das Akkumulieren der Ziffern in einer Zeichenfolge wird mit den hinterlegten Testfällen getestet
 */
void testcountDigit() {
  textHeadline("Tests mit countDigit");
  if (bcountDigit_done) {
    for (int i = 0; i < tf_countDigit.length; i++) {
      int result = countDigit(tf_countDigit[i].ersteZeichenfolge);
      System.out.printf("countDigit(\"%-44s\"): %3d - Erwartet %3d -> ",
        tf_countDigit[i].ersteZeichenfolge,
        result,
        tf_countDigit[i].ergebnis);
      okOrError(result == tf_countDigit[i].ergebnis);
    }
  } else
    skull();
}


/**
 * Methodenname:   testreplaceWithWhatever
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Die Funktion replaceWithWhatever wird mit den hinterlegten Testfällen geprüft.
 */
void testreplaceWithWhatever() {
  textHeadline("Tests mit replaceWithWhatever");
  if (breplaceWithWhatever_done) {
    for (int i = 0; i < tf_replaceWithWhatever.length; i++) {
      String result = replaceWithWhatever(tf_replaceWithWhatever[i][0], tf_replaceWithWhatever[i][1], tf_replaceWithWhatever[i][2]);
      System.out.printf("replaceWithWhatever(\"%s\", \"%s\", \"%s\"):%s\t \"%s\" - Erwartet \"%s\" -> ",
        tf_replaceWithWhatever[i][0],
        tf_replaceWithWhatever[i][1],
        tf_replaceWithWhatever[i][2],
        fillString(16-((tf_replaceWithWhatever[i][0] ==null? 4: tf_replaceWithWhatever[i][0].length())), " "),
        result,
        tf_replaceWithWhatever[i][3]);
      okOrError(result.equals(tf_replaceWithWhatever[i][3]));
    }
  } else
    skull();
}


/**
 * Methodenname:   testisPalindrom
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Der Check auf Palindrom bei Zeichenfolgen wird mit den hinterlegten Testfällen geprüft.
 */
void testisPalindrom() {
  textHeadline("Tests mit isPalindrom");
  if (bisPalindrom) {
    for (int i = 0; i < tf_isPalindrom.length; i++) {
      boolean result = isPalindrom(tf_isPalindrom[i].ersteZeichenfolge, tf_isPalindrom[i].bBoolpar1);
      System.out.printf("isPalindrom(%c%s%c, %5B):%s %4s\t Erwartet %4s -> ",
                          (tf_isPalindrom[i].ersteZeichenfolge==null ? ' ' : '\"'),
                          tf_isPalindrom[i].ersteZeichenfolge,
                          (tf_isPalindrom[i].ersteZeichenfolge==null ? ' ' : '\"'),
                          tf_isPalindrom[i].bBoolpar1,
                          fillString(13-((tf_isPalindrom[i].ersteZeichenfolge==null? 4: tf_isPalindrom[i].ersteZeichenfolge.length())), " "),
                          b2Str(result),
                          b2Str(tf_isPalindrom[i].bExpected_or_Direction));
      okOrError(result == tf_isPalindrom[i].bExpected_or_Direction);
    }
  } else
    skull();
}


/**
 * Methodenname:   testtestPassword
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Die Funktion testPassword wird mit den hinterlegten Testfällen geprüft.
 */
void testtestPassword() {
  textHeadline("Tests mit testPassword");
  if (btestPassword_done) {
    for(int i = 0; i < tf_testPassword.length ; i++){
      boolean result = testPassword(tf_testPassword[i].ersteZeichenfolge, tf_testPassword[i].ersteZahl, tf_testPassword[i].zweiteZahl,tf_testPassword[i].dritteZahl);
      System.out.printf("testPassword(%c%s%c, %d, %d, %d): %s %5s\t - Erwartet %5b -> ",
                         (tf_testPassword[i].ersteZeichenfolge==null ? ' ' : '\"'),
                         tf_testPassword[i].ersteZeichenfolge,
                         (tf_testPassword[i].ersteZeichenfolge==null ? ' ' : '\"'),
                         tf_testPassword[i].ersteZahl,
                         tf_testPassword[i].zweiteZahl,
                         tf_testPassword[i].dritteZahl,
                         fillString(16-((tf_testPassword[i].ersteZeichenfolge==null? 4: tf_testPassword[i].ersteZeichenfolge.length())), " "),
                         result,
                         tf_testPassword[i].bExpected_or_Direction);
      okOrError(result == tf_testPassword[i].bExpected_or_Direction);
    }
  } else
    skull();
}
