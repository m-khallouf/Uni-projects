// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!!
// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!!
// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!!

/**
 * Methodenname:   testLoops
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Ruft die einzelnen Testfunktionen für die implementierten Funktionen auf
 */
void testLoops() {
  textHeadline("Testfälle für Schleifen-/Arrayübungen", false);  
  testisStartOrEndEqual();
  testgetFirstAndLast();  
  testswapFirstLast();  
  testswapArray();
  testfindLong();
  testfindMax();
  testfindLongest();
  testshiftArray();
  testcountOddOrEven();
  testcutBy5();
  testgetBiggestDiff();
  testsetTen();
  testarray2int();
  testgetOddOrEven();
}


/**
* Methodenname:   testisStartOrEndEqual
* Datum:          06.12.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion isStartOrEndEqual wird mit den hinterlegten Testfällen geprüft.
*/
void testisStartOrEndEqual(){
  textHeadline("Tests mit isStartOrEndEqual");
  if (bisStartOrEndEqual) {
    for (int i = 0; i < tf_isStartOrEndEqual.length; i++) {
      boolean result = isStartOrEndEqual(tf_isStartOrEndEqual[i].erstesFeld,tf_isStartOrEndEqual[i].zweitesFeld);
      //println(tf_Pangramm[i].ersteZeichenfolge);
      System.out.printf("isTautogramm(%s, %s): %5b - Erwartet %5b -> ",
         fillString(9, " ",Arrays.toString(tf_isStartOrEndEqual[i].erstesFeld), false), 
         fillString(9, " ",Arrays.toString(tf_isStartOrEndEqual[i].zweitesFeld), false),
         result, 
         tf_isStartOrEndEqual[i].bExpected_or_Direction);
      okOrError(result == tf_isStartOrEndEqual[i].bExpected_or_Direction);
    }
  } else
    skull();

}

/**
 * Methodenname:   testgetFirstAndLast
 * Datum:          10.05.2021
 * Autor:          Gurn
 * Beschreibung:   Die Funktion getFirstAndLast wird mit den hinterlegten Testfällen geprüft.
 */
void testgetFirstAndLast() {
  textHeadline("Tests mit getFirstAndLast");
  if (bgetFirstAndLast) {   
    for(int i = 0; i < tf_getFirstAndLast.length; i++){
      int[] ergebnis = getFirstAndLast(tf_getFirstAndLast[i][0]); 
      System.out.printf("getFirstAndLast(%s): %s - Erwartet %s -> ",
                         fillString(27, " ",Arrays.toString(tf_getFirstAndLast[i][0]), false),
                         fillString(6, " ",Arrays.toString(ergebnis), false),
                         fillString(6, " ",Arrays.toString(tf_getFirstAndLast[i][1]), false));
      okOrError(Arrays.equals(ergebnis,tf_getFirstAndLast[i][1]));                         
    }      
  } else
    skull();
}


/**
* Methodenname:   testswapFirstLast
* Datum:          06.12.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion swapFirstLast wird mit den hinterlegten Testfällen geprüft.
*/
void testswapFirstLast(){
  textHeadline("Tests mit swapFirstLast");
  if(bswapFirstLast){
    for(int i = 0; i < tf_swapFirstLast.length; i++){
      short [] temp = (tf_swapFirstLast[i][0] == null ? new short[]{} : tf_swapFirstLast[i][0].clone());
      
      short[] ergebnis = swapFirstLast(tf_swapFirstLast[i][0]);
      System.out.printf("swapFirstLast(%s): %s - Erwartet %s -> ",
                         fillString(16, " ",Arrays.toString(temp), false),                         
                         fillString(16, " ",Arrays.toString(ergebnis), false),
                         fillString(16, " ",Arrays.toString(tf_swapFirstLast[i][1]), false));
      okOrError(Arrays.equals(ergebnis,tf_swapFirstLast[i][1]));
    }
  }
  else
    skull();
}


/**
* Methodenname:   testswapArray
* Datum:          06.12.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion swapArray wird mit den hinterlegten Testfällen geprüft.
*/
void testswapArray(){
  textHeadline("Tests mit swapArray");
  if (bswapArray){
    for(int i = 0; i < tf_swapArray.length-1; i++){
      byte [] tempOne = tf_swapArray[i][0].clone();
      byte [] tempTwo = tf_swapArray[i][1].clone();
      swapArray(tf_swapArray[i][0], tf_swapArray[i][1]); 
      System.out.printf("swapArray(%s, %s): %s, %s - Erwartet %s, %s -> ",
                         fillString(18, " ",Arrays.toString(tempOne), false),
                         fillString(18, " ",Arrays.toString(tempTwo), false),
                         fillString(18, " ",Arrays.toString(tf_swapArray[i][0]), false),
                         fillString(18, " ",Arrays.toString(tf_swapArray[i][1]), false),
                         fillString(18, " ",Arrays.toString(tf_swapArray[i][0]), false),
                         fillString(18, " ",Arrays.toString(tf_swapArray[i][1]), false) );
      okOrError(Arrays.equals(tempOne,tf_swapArray[i][1]) && Arrays.equals(tempTwo,tf_swapArray[i][0]));         
    }
    byte[] feld1= null;
    byte[] feld2= null;
    byte [] tempOne = feld1;
    byte [] tempTwo = feld2;
    swapArray(feld1,feld2);
    System.out.printf("swapArray(%s, %s): %s, %s - Erwartet %s, %s -> %b\n",
                       fillString(18, " ",(feld1 == null ? "null":Arrays.toString(feld1)), false),
                       fillString(18, " ",(feld2 == null ? "null":Arrays.toString(feld2)), false),
                       fillString(18, " ",(feld1 == null ? "null":Arrays.toString(feld1)), false),
                       fillString(18, " ",(feld2 == null ? "null":Arrays.toString(feld2)), false),
                       fillString(18, " ",(feld1 == null ? "null":Arrays.toString(feld1)), false),
                       fillString(18, " ",(feld2 == null ? "null":Arrays.toString(feld2)), false),
                       (Arrays.equals(tempOne,feld1) && Arrays.equals(tempTwo,feld2)));
    
    feld1 = tf_swapArray[tf_swapArray.length - 1][0];
    feld2 = tf_swapArray[tf_swapArray.length - 1][1];
    tempOne = feld1;
    tempTwo = feld2;
    swapArray(feld1,feld2);
    System.out.printf("swapArray(%s, %s): %s, %s - Erwartet %s, %s -> %b",
                       fillString(18, " ",Arrays.toString(feld1), false),
                       fillString(18, " ",Arrays.toString(feld2), false),
                       fillString(18, " ",Arrays.toString(feld1), false),
                       fillString(18, " ",Arrays.toString(feld2), false),
                       fillString(18, " ",Arrays.toString(feld1), false),
                       fillString(18, " ",Arrays.toString(feld2), false) ,
                       (Arrays.equals(tempOne,feld1) && Arrays.equals(tempTwo,feld2)));
      
  }
  else
    skull();
}


/**
* Methodenname:   testfindLong
* Datum:          06.12.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion findLong wird mit den hinterlegten Testfällen geprüft.
*/
void testfindLong(){
  textHeadline("Tests mit findLong");
  if(bfindLong){
    for(int i = 0; i < tf_findLong.length; i++){
      int ergebnis = findLong(tf_findLong[i][0]); 
      System.out.printf("findLong(%s): %2d - Erwartet %2d -> ",
                         fillString(43, " ",Arrays.toString(tf_findLong[i][0]), false),
                         ergebnis,
                         tf_findLong[i][1][0]);
      okOrError(ergebnis == (int)tf_findLong[i][1][0]);
    }
  }
  else
    skull();
}


/**
* Methodenname:   testfindMax
* Datum:          06.12.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion findMax wird mit den hinterlegten Testfällen geprüft.
*/
void testfindMax(){
  textHeadline("Tests mit findMax");
  if(bfindMax){
    for(int i = 0; i < tf_findMax.length; i++){
      long ergebnis = findMax(tf_findMax[i][0]); 
      System.out.printf("findMax(%s): %10d - Erwartet %10d -> ",
                         fillString(45, " ",Arrays.toString(tf_findMax[i][0]), false),
                         ergebnis,
                         tf_findMax[i][1][0]);
      okOrError(ergebnis == (int)tf_findMax[i][1][0]);
    }
  }
  else
    skull();
}


/**
* Methodenname:   testfindLongest
* Datum:          06.12.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion findLongest wird mit den hinterlegten Testfällen geprüft.
*/
void testfindLongest(){
  textHeadline("Tests mit findLongest");
  if(bfindLongest){
    for(int i = 0; i < tf_findLongest.length; i++){
      int ergebnis = findLongest(tf_findLongest[i].zweidimensionalesFeld);
      String feldinhalte = "[ ";
      if(tf_findLongest[i].zweidimensionalesFeld == null)
        feldinhalte = "null";
      for (int n = 0; n < (tf_findLongest[i].zweidimensionalesFeld == null ? 0: tf_findLongest[i].zweidimensionalesFeld.length); n++)
        if ( n < tf_findLongest[i].zweidimensionalesFeld.length - 1)
          feldinhalte += Arrays.toString(tf_findLongest[i].zweidimensionalesFeld[n]) + ", ";
        else 
          feldinhalte += Arrays.toString(tf_findLongest[i].zweidimensionalesFeld[n]) + " ]";
        System.out.printf("findLongest(%s): %2d - Erwartet %2d -> ",
                         fillString(62, " ",feldinhalte,false ),
                         ergebnis,
                         tf_findLongest[i].result);
      okOrError(ergebnis == tf_findLongest[i].result);
    }
  }
  else
    skull();
}


/**
* Methodenname:   testshiftArray
* Datum:          06.12.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion shiftArray wird mit den hinterlegten Testfällen geprüft.
*/
void testshiftArray(){
  textHeadline("Tests mit shiftArray");
  if(bshiftArray){
    for(int i = 0; i < tf_shiftArray.length; i++){
      int [] temp = tf_shiftArray[i].erstesFeld.clone();
      int ergebnis[] = shiftArray(tf_shiftArray[i].erstesFeld,tf_shiftArray[i].bExpected_or_Direction); 
      System.out.printf("shiftArray(%s, %s): %s - Erwartet %s -> ",
                         fillString(15, " ",Arrays.toString(temp), false),
                         fillString(6, " ",(tf_shiftArray[i].bExpected_or_Direction ? "Links" : "Rechts"), false),
                         fillString(15, " ",Arrays.toString(ergebnis), false),
                         fillString(15, " ",Arrays.toString(tf_shiftArray[i].zweitesFeld), false) );
      okOrError(Arrays.equals(ergebnis,tf_shiftArray[i].zweitesFeld));
    }        
  }
  else
    skull();
}



/**
* Methodenname:   testcountOddOrEven
* Datum:          06.12.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion countOddOrEven wird mit den hinterlegten Testfällen geprüft.
*/
void testcountOddOrEven(){
  textHeadline("Tests mit countOddOrEven");
  if(bCountOddOrEven){
    for(int i = 0; i < tf_countOddOrEven.length; i++){
      int ergebnis = countOddOrEven(tf_countOddOrEven[i].erstesFeld, tf_countOddOrEven[i].bExpected_or_Direction);
      System.out.printf("countOddOrEven(%s, %-8s): %2d - Erwartet %2d -> ",
                         fillString(30, " ",Arrays.toString(tf_countOddOrEven[i].erstesFeld), false),
                         (tf_countOddOrEven[i].bExpected_or_Direction ? "ungerade" : "gerade"),                         
                         ergebnis,
                         tf_countOddOrEven[i].result);
      okOrError(ergebnis == tf_countOddOrEven[i].result);
    }
  }
  else
    skull();
}




/**
* Methodenname:   testcutBy5
* Datum:          06.12.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion cutBy5 wird mit den hinterlegten Testfällen geprüft.
*/
void testcutBy5(){
  textHeadline("Tests mit cutBy5");
  if(bcutBy5){
    for(int i = 0; i < tf_cutBy5.length; i++){
      short[] ergebnis = cutBy5(tf_cutBy5[i][0]); 
      System.out.printf("cutBy5(%s): %s - Erwartet %s -> ",
                         fillString(25, " ",Arrays.toString(tf_cutBy5[i][0]),false),
                         fillString(16, " ",Arrays.toString(tf_cutBy5[i][1]),false),
                         fillString(16, " ",Arrays.toString(ergebnis),false) );
      okOrError(Arrays.equals(ergebnis,tf_cutBy5[i][1]));
    }
  }
  else
    skull();
}



/**
* Methodenname:   testgetBiggestDiff
* Datum:          06.12.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion getBiggestDiff wird mit den hinterlegten Testfällen geprüft.
*/
void testgetBiggestDiff(){
  textHeadline("Tests mit getBiggestDiff");
  if(bgetBiggestDiff){
    //for(int i = 0; i < tf_biggestDiff.length; i++){
    //  int ergebnis = getBiggestDiff(tf_biggestDiff[i].erstesFeld); 
    //  System.out.printf("getBiggestDiff(%s): %3d - Erwartet %3d -> ",
    //                     fillString(18, " ",Arrays.toString(tf_biggestDiff[i].erstesFeld) , false),
    //                     ergebnis,
    //                     tf_biggestDiff[i].result);
    //  okOrError(ergebnis == tf_biggestDiff[i].result);
    //}    
  }
  else
    skull();
}



/**
* Methodenname:   testsetTen
* Datum:          06.12.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion setTen wird mit den hinterlegten Testfällen geprüft.
*/
void testsetTen(){
  textHeadline("Tests mit setTen");
  if(bsetTen){
    for(int i = 0; i < tf_setTen.length; i++){
      byte [] temp = tf_setTen[i][0].clone();
      byte ergebnis[] = setTen(tf_setTen[i][0]); 
      System.out.printf("setTen(%s):  %s - Erwartet %s -> ",
                         fillString(28, " ",Arrays.toString(temp), false),
                         fillString(33, " ",Arrays.toString(ergebnis), false),                         
                         fillString(33, " ",Arrays.toString(tf_setTen[i][1]), false) );
      okOrError(Arrays.equals(ergebnis,tf_setTen[i][1]));
    }        
  }
  else
    skull();
}


/**
* Methodenname:   testarray2int   
* Datum:          06.12.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion array2int wird mit den hinterlegten Testfällen geprüft.
*/
void testarray2int(){
  textHeadline("Tests mit array2int");
  if(barray2int){
    for(int i = 0; i < tf_array2int.length; i++){
      int ergebnis = array2int(tf_array2int[i].erstesFeld); 
      System.out.printf("array2int(%s): %7d - Erwartet %7d -> ",
                         fillString(21, " ",Arrays.toString(tf_array2int[i].erstesFeld), false),
                         ergebnis,
                         tf_array2int[i].result);
      okOrError(ergebnis == tf_array2int[i].result);
    }    
  }
  else
    skull();
}


/**
* Methodenname:   testgetOddOrEven
* Datum:          06.12.2022
* Autor:          Gurn
* Beschreibung:   Die Funktion getOddOrEven wird mit den hinterlegten Testfällen geprüft.
*/
void testgetOddOrEven(){
  textHeadline("Tests mit getOddOrEven");
  if(bgetOddOrEven){
    for(int i = 0; i < tf_getOddOrEven.length; i++){
      int ergebnis[] = getOddOrEven(tf_getOddOrEven[i].zweidimensionalesFeld, tf_getOddOrEven[i].bExpected_or_Direction);
      String feld = "";
      if(tf_getOddOrEven[i].zweidimensionalesFeld != null){
        for(int n = 0; n < tf_getOddOrEven[i].zweidimensionalesFeld.length; n++){
          //println(Arrays.toString(tf_getOddOrEven[i].zweidimensionalesFeld[n]));
          feld += Arrays.toString(tf_getOddOrEven[i].zweidimensionalesFeld[n]) + (n < tf_getOddOrEven[i].zweidimensionalesFeld.length - 1 ? ", ": "");
        }
      } else
        feld = "null";
      //println(feld);
      System.out.printf("getOddOrEven(%s, %-8s): %s - Erwartet %s -> ",
                         /*Arrays.toString(tf_getOddOrEven[i].zweidimensionalesFeld),*/
                         fillString(57, " ",feld,false),
                         (tf_countOddOrEven[i].bExpected_or_Direction ? "ungerade" : "gerade"),
                         fillString(24, " ",Arrays.toString(ergebnis), false),                         
                         fillString(24, " ",Arrays.toString(tf_getOddOrEven[i].erstesFeld), false));
      okOrError(Arrays.equals(ergebnis,tf_getOddOrEven[i].erstesFeld));
    }        
  }
  else
    skull();
}
