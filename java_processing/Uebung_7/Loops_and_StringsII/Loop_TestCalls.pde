// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!!
// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!!
// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!!

/**
 * Methodenname:   testLoops
 * Datum:          29.11.2022
 * Autor:          Gurn
 * Beschreibung:   Ruft die einzelnen Testfunktionen für die implementierten Funktionen auf
 */
void testLoops() {
  textHeadline("Testfälle für Schleifen-/Stringübungen", false);  
  testisTautogramm();
  testconvertDez2Dual();  
  testconvertBin2Dez();
  testgetCrossSum();
  testgetMaxBlock();  
  testendsWith();
  testisPangramm();
  testcheckBrackets();
  teststringSort();
  testgetISBN();
  testcheckIdCard();
  
}

/**
 * Methodenname:   testisTautogramm
 * Datum:          29.11.2022
 * Autor:          Gurn
 * Beschreibung:   Die Funktion isTautogramm wird mit den hinterlegten Testfällen geprüft.
 */
void testisTautogramm(){
  textHeadline("Tests mit isTautogramm");
  //if (bisTautogramm) {
  //  for (int i = 0; i < tf_isTautogramm.length; i++) {
  //    boolean result = isTautogramm(tf_isTautogramm[i].ersteZeichenfolge);
  //    //println(tf_Pangramm[i].ersteZeichenfolge);
  //    System.out.printf("isTautogramm(%s): %5b - Erwartet %5b -> ",
  //       fillString(90, " ",tf_isTautogramm[i].ersteZeichenfolge, (tf_isTautogramm[i].ersteZeichenfolge == null ? false : true)), 
  //       result, 
  //       tf_isTautogramm[i].bExpected_or_Direction);
  //    okOrError(result == tf_isTautogramm[i].bExpected_or_Direction);
  //  }
  //} else
    skull();

}

/**
 * Methodenname:   testconvertDez2Dual
 * Datum:          29.11.2022
 * Autor:          Gurn
 * Beschreibung:   Die Funktion convertDez2Dual wird mit  Testfällen geprüft.
 */
void testconvertDez2Dual() {
  textHeadline("Tests mit convertDez2Dual");
  if (bconvertDez2Dual) {   
    System.out.printf(" Dez ->  Dualzahl | Dez ->  Dualzahl | Dez ->  Dualzahl | Dez ->  Dualzahl | Dez ->  Dualzahl | Dez ->  Dualzahl | Dez ->  Dualzahl | Dez ->  Dualzahl |\n");
    for(int i = 0;  i < 32; i++){
      System.out.printf(" %3d ->  %8s | %3d ->  %8s | %3d ->  %8s | %3d ->  %8s | %3d ->  %8s | %3d ->  %8s | %3d ->  %8s | %3d ->  %8s |\n",
                        i, convertDez2Dual(i), 
                        i+32, convertDez2Dual(i+32), 
                        i+64, convertDez2Dual(i+64), 
                        i+96, convertDez2Dual(i+96), 
                        i+128, convertDez2Dual(i+128), 
                        i+160, convertDez2Dual(i+160), 
                        i+192, convertDez2Dual(i+192), 
                        i+224, convertDez2Dual(i+224));
      }      
  } else
    skull();
}


/**
* Methodenname:   testconvertBin2Dez
* Datum:          29.11.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion convertBin2Dez wird mit Testfällen geprüft.
*/
void testconvertBin2Dez(){
  textHeadline("Tests mit convertBin2Dez");
  if (bconvertBin2Dez){
    System.out.printf(" Dualzahl -> Dez |  Dualzahl -> Dez |  Dualzahl -> Dez |  Dualzahl -> Dez |  Dualzahl -> Dez |  Dualzahl -> Dez |  Dualzahl -> Dez |  Dualzahl -> Dez |\n");
    for(int i = 0, n = 1; i < 256; i++, n++){
      System.out.printf(" %8s -> %3d | ", Integer.toBinaryString(i), convertBin2Dez(Integer.toBinaryString(i)));
      if(n % 8 == 0)
        println();
    }
  }
  else
    skull();

}


/**
* Methodenname:   testgetCrossSum
* Datum:          29.11.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion getCrossSum wird mit den hinterlegten Testfällen geprüft.
*/
void testgetCrossSum(){
  textHeadline("Tests mit getCrossSum");
  if (bgetCrossSum){        
    for(int i = 0; i < tf_getCrossSumByte.length; i++){
      short result = getCrossSum(tf_getCrossSumByte[i][0]);
      System.out.printf("getCrossSum(%4d):%s\t %3d - Erwartet %3d -> ",
                         tf_getCrossSumByte[i][0],
                         fillString(6 , " "),
                         result,
                         tf_getCrossSumByte[i][1]);
      okOrError(result == tf_getCrossSumByte[i][1]);
    }    
    println();
    
    for(int i = 0; i < tf_getCrossSumShort.length; i++){
      short result = getCrossSum(tf_getCrossSumShort[i][0]);
      System.out.printf("getCrossSum(%6d):%s\t %3d - Erwartet %3d -> ",
                         tf_getCrossSumShort[i][0],
                         fillString(6 , " "),
                         result,
                         tf_getCrossSumShort[i][1]);
      okOrError(result == tf_getCrossSumShort[i][1]);
    }    
    println();
    
    for(int i = 0; i < tf_getCrossSumLong.length; i++){
      short result = getCrossSum(tf_getCrossSumLong[i][0]);
      System.out.printf("getCrossSum(%11d):%s\t %3d - Erwartet %3d -> ",
                         tf_getCrossSumLong[i][0],
                         fillString(6 , " "),
                         result,
                         tf_getCrossSumLong[i][1]);
      okOrError(result == tf_getCrossSumLong[i][1]);
    }  
    println();
    
    for(int i = 0; i < tf_getCrossSumString.length; i++){
      short result = getCrossSum(tf_getCrossSumString[i].ersteZeichenfolge);
      System.out.printf("getCrossSum(%s):%s\t %3d - Erwartet %3d -> ",
                        fillString(50, " ",tf_getCrossSumString[i].ersteZeichenfolge, (tf_getCrossSumString[i].ersteZeichenfolge == null ? false : true)),
                         fillString(1 , " "),
                         result,
                         tf_getCrossSumString[i].ergebnis);
      okOrError(result == tf_getCrossSumString[i].ergebnis);
    }
  } 
  else
    skull();

}

/**
* Methodenname:   testgetMaxBlock
* Datum:          29.11.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion getMaxBlock wird mit den hinterlegten Testfällen geprüft.
*/
void testgetMaxBlock() {
  textHeadline("Tests mit getMaxBlock");
  if (bgetMaxBlock) {        
    for (int i = 0; i < tf_getMaxBlock.length; i++) {
      int result = getMaxBlock(tf_getMaxBlock[i].ersteZeichenfolge);
      System.out.printf("getMaxBlock(%s): %3d - Erwartet %3d -> ",         
        fillString(50, " ",tf_getMaxBlock[i].ersteZeichenfolge, (tf_getMaxBlock[i].ersteZeichenfolge == null ? false : true)),
        result, 
        tf_getMaxBlock[i].ergebnis);
      okOrError(result == tf_getMaxBlock[i].ergebnis);
    }
  } else
    skull();
}


/**
* Methodenname:   testendsWith
* Datum:          29.11.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion endsWith wird mit den hinterlegten Testfällen geprüft.
*/
void testendsWith() {
  textHeadline("Tests mit endsWith");
  if (bendsWith) {        
    for (int i = 0; i < tf_endsWith.length; i++) {
      boolean result = endsWith(tf_endsWith[i].ersteZeichenfolge,tf_endsWith[i].zweiteZeichenfolge,tf_endsWith[i].bBoolpar1);
      System.out.printf("endsWith(%-10s, %-18s, %5b): %5b - Erwartet %5b -> ",
         fillString(10, " ",tf_endsWith[i].ersteZeichenfolge, (tf_endsWith[i].ersteZeichenfolge == null ? false : true)),
         fillString(18, " ",tf_endsWith[i].zweiteZeichenfolge, (tf_endsWith[i].zweiteZeichenfolge == null ? false : true)),          
         tf_endsWith[i].bBoolpar1,
         result, 
         tf_endsWith[i].ergebnis);
      okOrError(result == tf_endsWith[i].bExpected_or_Direction);
    }
  } else
    skull();
}

/**
* Methodenname:   testisPangramm
* Datum:          29.11.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion isPangramm wird mit den hinterlegten Testfällen geprüft.
*/
void testisPangramm() {
  textHeadline("Tests mit isPangramm");
  if (bisPangramm) {        
    for (int i = 0; i < tf_isPangramm.length; i++) {
      boolean result = isPangramm(tf_isPangramm[i].ersteZeichenfolge);
      //println(tf_Pangramm[i].ersteZeichenfolge);
      System.out.printf("isPangramm(%s): %5b - Erwartet %5b -> ",
         fillString(43, " ",tf_isPangramm[i].ersteZeichenfolge, (tf_isPangramm[i].ersteZeichenfolge == null ? false : true)), 
         result, 
         tf_isPangramm[i].bExpected_or_Direction);
      okOrError(result == tf_isPangramm[i].bExpected_or_Direction);
    }    
  } else
    skull();
}

/**
* Methodenname:   testcheckBrackets
* Datum:          29.11.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion checkBrackets / checkBracketsWC wird mit den hinterlegten Testfällen geprüft.
*/
void testcheckBrackets() {
  textHeadline("Tests mit checkBrackets");
  if (bcheckBrackets) {        

    for (int i = 0; i < tf_checkBrackets.length; i++) {
      boolean result = checkBrackets(tf_checkBrackets[i].ersteZeichenfolge);
      System.out.printf("checkBrackets(%s): %5b - Erwartet %5b -> ",
         fillString(45, " ",tf_checkBrackets[i].ersteZeichenfolge, (tf_checkBrackets[i].ersteZeichenfolge == null ? false : true)), 
         result, 
         tf_checkBrackets[i].bExpected_or_Direction);
      okOrError(result == tf_checkBrackets[i].bExpected_or_Direction);
    }
    println();
    
    for (int i = 0; i < tf_checkBracketsWC.length; i++) {
      boolean result = checkBracketsWC(tf_checkBracketsWC[i].ersteZeichenfolge);
      System.out.printf("checkBracketsWC(%s): %5b - Erwartet %5b -> ",
         fillString(45, " ",tf_checkBracketsWC[i].ersteZeichenfolge, (tf_checkBracketsWC[i].ersteZeichenfolge == null ? false : true)), 
         result, 
         tf_checkBracketsWC[i].bExpected_or_Direction);
      okOrError(result == tf_checkBracketsWC[i].bExpected_or_Direction);
    }
  } else
    skull();
}


/**
* Methodenname:   teststringSort
* Datum:          29.11.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion stringSort wird mit den hinterlegten Testfällen geprüft.
*/
void teststringSort(){
  textHeadline("Tests mit stringSort");
  if (bstringSort) {
    for (int i = 0; i < tf_stringSort.length; i++) {
      String result = stringSort(tf_stringSort[i].ersteZeichenfolge, tf_stringSort[i].zweiteZeichenfolge);
      System.out.printf("stringSort(%s, %s): %s - Erwartet %s -> ",
         fillString(25, " ",tf_stringSort[i].ersteZeichenfolge, (tf_stringSort[i].ersteZeichenfolge == null ? false : true)), 
         fillString(22, " ",tf_stringSort[i].zweiteZeichenfolge, (tf_stringSort[i].zweiteZeichenfolge == null ? false : true)),
         fillString(33, " ",result, (result == null ? false : true)),
         fillString(33, " ",tf_stringSort[i].strErgebnis, (tf_stringSort[i].strErgebnis == null ? false : true)));
      okOrError(result.equals(tf_stringSort[i].strErgebnis));
    }    
  } else
    skull();
}


/**
* Methodenname:   testgetISBN
* Datum:          29.11.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion getISBN wird mit den hinterlegten Testfällen geprüft.
*/
void testgetISBN(){
  textHeadline("Tests mit getISBN");
  if (bgetISBN) {
    for (int i = 0; i < tf_getISBN.length; i++) {
      String result = getISBN(tf_getISBN[i].ersteZeichenfolge);
      System.out.printf("getISBN(%s): %s - Erwartet %s -> ",
         fillString(17, " ",tf_getISBN[i].ersteZeichenfolge, (tf_getISBN[i].ersteZeichenfolge == null ? false : true)), 
         fillString(18, " ",result, (result == null ? false : true)),
         fillString(18, " ",tf_getISBN[i].strErgebnis, (tf_getISBN[i].strErgebnis == null ? false : true)));
      okOrError(result.equals(tf_getISBN[i].strErgebnis));
    }    
  } else
    skull();
}


/**
* Methodenname:   testcheckIdCard
* Datum:          29.11.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion checkIdCard wird mit den hinterlegten Testfällen geprüft.
*/
void testcheckIdCard(){
  textHeadline("Tests mit checkIdCard");
  //if (bcheckIdCard) {
  //  for (int i = 0; i < tf_checkIdCard.length; i++) {
  //    String result = checkIdCard(tf_checkIdCard[i].ersteZeichenfolge);
  //    System.out.printf("checkIdCard(%s): %s - Erwartet %s -> ",
  //       fillString(10, " ",tf_checkIdCard[i].ersteZeichenfolge, (tf_checkIdCard[i].ersteZeichenfolge == null ? false : true)), 
  //       fillString(10, " ",result, (result == null ? false : true)),
  //       fillString(10, " ",tf_checkIdCard[i].strErgebnis, (tf_checkIdCard[i].strErgebnis == null ? false : true)));
  //    okOrError(result.equals(tf_checkIdCard[i].strErgebnis));
  //  }    
  //} else
    skull();
} //<>//
