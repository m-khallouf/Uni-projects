/** //<>//
 * Methodenname:        isStartOrEndEqual
 * Datum:               16.12.22
 * Autor:               Khallouf
 * Beschreibung:        Die Funktionebprueft nach, ob in den uebergebenen Feld die ersten und letzte Elemente identisch sind.
 * @param firstArray    uebergebenen int Feld
 * @param secondArray   uebergebenen int Feld
 * @return boolean      true -> Bedinung erfuellt
                        false -> Bedinung nicht erfuellt
 */
boolean isStartOrEndEqual(int[] firstArray, int[] secondArray) {
  if (firstArray[0] == secondArray [0] || firstArray[firstArray.length -1] == secondArray [secondArray.length -1]) {
    return true;
  }
  return false;
}

/**
 * Methodenname:        getFirstAndLast
 * Datum:               16.12.22
 * Autor:               Khallouf
 * Beschreibung:        Die Funktion gibt neuen Feld zurueck, indem nur die erste und letzte Elemente der uebergebenen Feld sind.
 * @param anArray       uebergebenen int Feld
 * @return resdult      die erste und letzte Elemet von anArray
 */
int[] getFirstAndLast(int[] anArray) {
  if (anArray == null || anArray.length == 0) {
    return new int[] {};
  }

  int[] result = new int[2];

  result[0] = anArray[0];
  result[1] = anArray[anArray.length - 1];

  return result;
}

/**
 * Methodenname:        swapFirstLast
 * Datum:               16.12.22
 * Autor:               Khallouf
 * Beschreibung:        Die Funktion gibt neuen Feld zurueck, indem nur die erste und letzte Elemente der uebergebenen Feld getausch sind.
 * @param anArray       uebergebenen short Feld
 * @return result       die erste und letzte Elememte von anArray sind getauscht
 */
short[] swapFirstLast(short[] anArray) {
  if (anArray == null || anArray.length == 0) {
    return new short[] {};
  }

  short[] result = new short[anArray.length];  
   
  short tmp = anArray[0];
  anArray[0] = anArray[anArray.length - 1];
  anArray[anArray.length - 1] = tmp;
  
  result = anArray;

  return result;
}

/**
 * Methodenname:        swapArray
 * Datum:               16.12.22
 * Autor:               Khallouf
 * Beschreibung:        Die Funktion tauscht der Inhalt der beiden uebergebenen Felds.
 * @param firstArray    uebergebenen byte Feld
 * @param secondArray   uebergebenen byte Feld
 */
void swapArray(byte[] firstArray, byte[] secondArray) {
  if (firstArray != null && secondArray != null && firstArray.length == secondArray.length) {
    byte temp = 0;

    for (int i = 0; i < firstArray.length; i++) {
      temp = firstArray[i];
      firstArray[i] = secondArray[i];
      secondArray[i] = temp;
    }
  }
}
 
/**
 * Methodenname:        findLong
 * Datum:               16.12.22
 * Autor:               Khallouf
 * Beschreibung:        Die Funktion gibt zurueck, die Ziffern der längsten Zahln, indem uebergebenen Feld.
 * @param anArray       uebergebenen long Feld
 * @return counter      Großte Anzahl der Ziffern
 */
int findLong(long[] anArray) {
  if (anArray == null || anArray.length == 0) {
    return 0;
  }

  long longest = anArray[0];

  for (int i = 1; i < anArray.length; i++) {
    if (anArray[i] > longest) {
      longest = anArray[i];
    }
  }

  int counter = 0;
  while (longest > 0) {
    longest /= 10;
    counter++;
  }
  return counter;
}

/**
 * Methodenname:        findMax
 * Datum:               16.12.22
 * Autor:               Khallouf
 * Beschreibung:        Die Funktion gibt zurueck, die groeßte vorkommende Zahl aus dem uebergebenen Feld.
 * @param anArray       uebergebenen long Feld
 * @return maxNum       Groeßte vorkommende Zahl
 */
long findMax(long[] anArray) {
  if (anArray == null || anArray.length == 0) {
    return 0;
  }

  long maxNum = anArray[0];

  for (long index : anArray) {
    if (index > maxNum){
      maxNum = index;
    }
  }
  return maxNum;
}

/**
 * Methodenname:        findLongest
 * Datum:               16.12.22
 * Autor:               Khallouf
 * Beschreibung:        Die Funktion gibt zurueck, die Laenge des laengsten Teilarrays aus dem uebergebenen Feld.
 * @param anArray       2-dim uebergebenen int Feld
 * @return maxNum       laengsten Teilarrays
 */
int findLongest(int[][] anArray) {

  if (anArray == null || anArray.length == 0) {
    return 0;
  }

  int longst = 0;
  for (int[]subArray : anArray) {
    if (subArray.length > longst) {
      longst = subArray.length;
    }
  }

  return longst;
}

/**
 * Methodenname:        shiftArray
 * Datum:               16.12.22
 * Autor:               Khallouf
 * Beschreibung:        Die Funktion gibt zurueck,  alle Elemente etweder um eins
                        nach links oder nach rechts verschoben wurde dem uebergebenen Feld.
 * @param anArray       uebergebenen int Feld
 * @param shift         true -> alle Elemente werden nach linkt vershoben
                        false -> alle Elemente werden nach rechts vershoben
 * @return anArray      der getauschte feld 
 */
int[] shiftArray(int[] anArray, boolean shift) {
  if (anArray == null || anArray.length == 0) {
    return new int[] {};
  }

  int lastIndex = anArray[anArray.length - 1];
  int firstIndex = anArray[0];

  if (!shift) {
    for (int i = anArray.length - 2; i >= 0; i--) {
      anArray[i + 1] = anArray[i];
    }
    anArray[0] = lastIndex;
  } else if (shift) {
    for (int i = 0; i < anArray.length - 1; i++) {
      anArray[i] = anArray[i + 1];
    }
    anArray[anArray.length - 1] = firstIndex;
  }

  return anArray;
}

/**
 * Methodenname:        countOddOrEven
 * Datum:               16.12.22
 * Autor:               Khallouf
 * Beschreibung:        Die Funktion gibt zurueck, entweder die ungeraden oder die geraden Werte in dem
                        numerischen Feld gezählt.
 * @param anArray       uebergebenen int Feld
 * @param shift         true -> gerade zahlen werden gezaehlt
                        false -> ungerade zahlen werden gezaehlt
 * @return evenOdd      das ergebnis
 */
int countOddOrEven(int[] anArray, boolean bool) {
  if (anArray.length == 0) {
    return 0;
  }
  int even = 1;
  int odd = 1;
  int evenOdd =0;

  for (int index : anArray) {
    if (!bool && index % 2 == 0) {
      evenOdd = even++;
    } else if (bool && index % 2 != 0) {
      evenOdd = odd++;
    }
  }

  return evenOdd;
}

/**
 * Methodenname:        cutBy5
 * Datum:               16.12.22
 * Autor:               Khallouf
 * Beschreibung:        Die Funktion uberprueft nach, ob in dem uebergebenen Feld das Zahl 5 vorkommt
 *                      wenn das der Fall ist, werden alle kommenden zahlen ignoriert.
 * @param anArray       uebergebenen short Feld
 * @return evenOdd      das ergebnis
 */
short[] cutBy5(short[] anArray) {
  int i = 0;
  while (i < anArray.length && anArray[i] != 5) {
    i++;
  }

  short[] result = new short[i];
  for (int j = 0; j < i; j++) {
    result[j] = anArray[j];
  }
  return result;
}


/*
 * Die Funktion bekommt ein int-Arrays als Parameter. Es wird die größte
 * vorkommende Differenz zurückgeliefert.
 * Beispiele:
 *    getBiggestDiff([1, 2, 3])       ->  2
 *    gertBiggestDiff([-5, -1, 2, 5])  ->  10
 */


/**
 * Methodenname:        setTen
 * Datum:               16.12.22
 * Autor:               Khallouf
 * Beschreibung:        Die Funktion uberprueft nach, ob in dem uebergebenen Feld jede Zahl % 10 ohne rest ist
                        wenn das der Fall ist, werden alle kommenden zahlen mit der selben Zahl weiter gedrueckt,
                        bis es andere zahl, der % 10 ohne rest vor kommt.
 * @param anArray       uebergebenen short Feld
 * @return evenOdd      das ergebnis
 */
byte[] setTen(byte[] anArray) {
  if (anArray == null || anArray.length == 0) {
    return new byte []{};
  }

  boolean bSetTen = false;

  for (int i = 0; i < anArray.length; i++) {
    
    if (anArray[i] % 10 == 0) {
      bSetTen = true;
    } else if (bSetTen) {
      anArray[i] = anArray[i - 1];
    }
  }
  return anArray;
}

/**
 * Methodenname:        array2int
 * Datum:               16.12.22
 * Autor:               Khallouf
 * Beschreibung:        Die Funktion bekommt einen Feld mit int-Werten. Aus diesen array 
                        wird eine int-Zahl gebildet und zurückgeliefert. wenn ein negatives zahl vorkommt, wird ein 0 gesetzt.
 * @param anArray       uebergebenen int Feld
 * @return result       das gebildten int zahl
 */
int array2int(int[] anArray) {
  if (anArray == null || anArray.length == 0) {
    return 0;
  }

  int result = 0;
  for (int num : anArray) {
    result = result * 10;
    if (num > 0){
      result += num;
    }
  }

  return result;
}

/**
 * Methodenname:            array2int
 * Datum:                   16.12.22
 * Autor:                   Khallouf
 * Beschreibung:            Die Funktion liefert entweder ein Feld mit allen geraden Zahlen oder ein Feld
                            mit allen ungeraden Zahlen zurück.
 * @param anArray           2-dim uebergebenen int Feld
 * @param bool              true -> gerade zahlen werde zurueck geliefert
                            false -> ungerade zahlen werde zurueck geliefert
 * @return resultEvenOrOdd  das gebildten int zahl
 */
int[] getOddOrEven(int[][] anArray, boolean bool) {
  if (anArray == null || anArray.length == 0) {
    return new int []{};
  }

  int[] resultEvenOrOdd = new int[anArray.length];

  for (int[] subArray : anArray) {
    for (int num : subArray) {

      int[] even = new int[subArray.length];
      int[] odd = new int [subArray.length];

      if (bool && num % 2 == 0) {
        resultEvenOrOdd = new int[resultEvenOrOdd.length + even.length] ;
      } else if (!bool && num % 2 != 0) {
       resultEvenOrOdd = new int[resultEvenOrOdd.length + odd.length] ;
      }
    }
  }


  return resultEvenOrOdd;
}
