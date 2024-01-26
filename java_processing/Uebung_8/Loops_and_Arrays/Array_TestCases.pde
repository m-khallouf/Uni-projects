// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!!
// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!!
// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!!

class UniversalTestParameter{
  boolean bBoolpar1;
  int[] erstesFeld;
  int[] zweitesFeld;  
  int[][] zweidimensionalesFeld;
  boolean bExpected_or_Direction;
  String ersteZeichenfolge;
  String zweiteZeichenfolge;
  String[] stringFeld;
  String strErgebnis;
  char erstesZeichen;
  char zweitesZeichen;
  int ersteZahl;
  int zweiteZahl;
  int dritteZahl;
  long ergebnis;
  int result;

  public UniversalTestParameter(int[] feld1, int[] feld2, boolean bValue){
      this.erstesFeld = feld1;
      this.zweitesFeld = feld2;
      this.bExpected_or_Direction = bValue;
  } 
   public UniversalTestParameter(int[] feld1, boolean bValue, int result){
      this.erstesFeld = feld1;      
      this.bExpected_or_Direction = bValue;
      this.result = result;
  } 
  public UniversalTestParameter(int[] feld1, int result){
      this.erstesFeld = feld1;      
      this.result = result;
  } 
  public UniversalTestParameter(String[] zahlenfeld, long ergebnis){
    this.stringFeld = zahlenfeld;
    this.ergebnis = ergebnis;
  }
  public UniversalTestParameter(String strZeichenfolge, long ergebnis){
    this.ersteZeichenfolge = strZeichenfolge;
    this.ergebnis = ergebnis;
  }
  public UniversalTestParameter(String strZeichenfolge, String strErgebnis){
    this.ersteZeichenfolge = strZeichenfolge;
    this.strErgebnis = strErgebnis;
  }
  public UniversalTestParameter(String strZeichenfolge, String[] stringFeld){
    this.ersteZeichenfolge = strZeichenfolge;
    this.stringFeld = stringFeld;
  }
  public UniversalTestParameter(boolean bSearch, String strZeichenfolge, boolean bValue){
      this.bBoolpar1 = bSearch;
      this.ersteZeichenfolge = strZeichenfolge;
      this.bExpected_or_Direction = bValue;
  } 
  public UniversalTestParameter(String strZeichenfolge, boolean bValue){
      this.ersteZeichenfolge = strZeichenfolge;
      this.bExpected_or_Direction = bValue;
  } 
  public UniversalTestParameter(String ersteZeichenfolge, boolean bValue, String zweiteZeichenfolge){
      this.ersteZeichenfolge = ersteZeichenfolge;
      this.bExpected_or_Direction = bValue;
      this.zweiteZeichenfolge = zweiteZeichenfolge;
  } 
  public UniversalTestParameter(String strZeichenfolge, char zeichen, long ergebnis){
    this.ersteZeichenfolge = strZeichenfolge;
    this.erstesZeichen = zeichen;
    this.ergebnis = ergebnis;
  }
  public UniversalTestParameter(String strZeichenfolge, char zeichen, int ersteZahl, long ergebnis){
    this.ersteZeichenfolge = strZeichenfolge;
    this.erstesZeichen = zeichen;
    this.ersteZahl = ersteZahl;
    this.ergebnis = ergebnis;
  }
  public UniversalTestParameter(String strZeichenfolge, long ergebnis, String strErgebnis){
    this.ersteZeichenfolge = strZeichenfolge;
    this.ergebnis = ergebnis;
    this.strErgebnis = strErgebnis;
  }
  public UniversalTestParameter(int ersteZahl, int zweiteZahl, long ergebnis){
    this.ersteZahl = ersteZahl;
    this.ergebnis = ergebnis;
    this.zweiteZahl = zweiteZahl;
  }
  public UniversalTestParameter(String strZeichenfolge, String strErgebnis, int ersteZahl){
    this.ersteZeichenfolge = strZeichenfolge;    
    this.strErgebnis = strErgebnis;
    this.ersteZahl = ersteZahl;
  }
  public UniversalTestParameter(String[] stringFeld, int ersteZahl){
    this.stringFeld = stringFeld;    
    this.ersteZahl = ersteZahl;
  }
  public UniversalTestParameter(String[] stringFeld, boolean bBoolpar1){
    this.stringFeld = stringFeld;    
    this.bBoolpar1 = bBoolpar1;
  }
  public UniversalTestParameter(String strZeichenfolge, int ersteZahl, long ergebnis){
    this.ersteZeichenfolge = strZeichenfolge;    
    this.ersteZahl = ersteZahl;
    this.ergebnis = ergebnis;
  }
  public UniversalTestParameter(String strZeichenfolge, int ersteZahl, String strErgebnis){
    this.ersteZeichenfolge = strZeichenfolge;
    this.ersteZahl = ersteZahl;
    this.strErgebnis = strErgebnis;
  }
  public UniversalTestParameter(String strZeichenfolge, char erstesZeichen, char zweitesZeichen, String strErgebnis){
    this.ersteZeichenfolge = strZeichenfolge;    
    this.erstesZeichen = erstesZeichen;
    this.zweitesZeichen = zweitesZeichen;
    this.strErgebnis = strErgebnis;
  }
  public UniversalTestParameter(String strZeichenfolge, boolean bValue, boolean bExpected_or_Direction){
      this.ersteZeichenfolge = strZeichenfolge;
      this.bBoolpar1 = bValue;
      this.bExpected_or_Direction = bExpected_or_Direction;
  }
  public UniversalTestParameter(String strZeichenfolge, int ersteZahl, int zweiteZahl, int dritteZahl, boolean bExpected_or_Direction){
    this.ersteZeichenfolge = strZeichenfolge;    
    this.ersteZahl = ersteZahl;
    this.zweiteZahl = zweiteZahl;
    this.dritteZahl = dritteZahl;
    this.bExpected_or_Direction = bExpected_or_Direction;
  }
  public UniversalTestParameter(String ersteZeichenfolge, String zweiteZeichenfolge, boolean bValue, boolean bExpected_or_Direction){
      this.ersteZeichenfolge = ersteZeichenfolge;      
      this.zweiteZeichenfolge = zweiteZeichenfolge;
      this.bBoolpar1 = bValue;
      this.bExpected_or_Direction = bExpected_or_Direction;
  } 
  public UniversalTestParameter(String ersteZeichenfolge, String zweiteZeichenfolge, String strErgebnis){
      this.ersteZeichenfolge = ersteZeichenfolge;      
      this.zweiteZeichenfolge = zweiteZeichenfolge;
      this.strErgebnis = strErgebnis;
  } 
  public UniversalTestParameter(int[][] zweidimensionalesFeld, int result){
      this.zweidimensionalesFeld = zweidimensionalesFeld;
      this.result = result;
  }  
   public UniversalTestParameter(int[][] zweidimensionalesFeld, boolean bExpected_or_Direction, int[] erstesFeld){
      this.zweidimensionalesFeld = zweidimensionalesFeld;
      this.bExpected_or_Direction = bExpected_or_Direction;
      this.erstesFeld = erstesFeld;
  }  
}
String nullString = null;
int [][] null2DimArray = null;
int[] nullArray = null;
// Testfelder für die einzelnen Funktionen/Methoden
// Letztes Element ist immer das zu erwartende Ergebnis
// alle Elemente davor, sind die Parameter für die einzelnen Funktionen/Methoden

UniversalTestParameter tf_isStartOrEndEqual[] = { new UniversalTestParameter(new int[] {1, 2, 3}, new int[] {7, 3}, true), 
                                                  new UniversalTestParameter(new int[] {1, 2, 3}, new int[] {7, 3, 2}, false),
                                                  new UniversalTestParameter(new int[] {1, 2, 3}, new int[] {1, 3}, true), 
                                                  new UniversalTestParameter(new int[] {1, 2, 3}, new int[] {1}, true),
                                                  new UniversalTestParameter(new int[] {1, 2, 3}, new int[] {2}, false) };

int tf_getFirstAndLast[][][] = { { {1}, {1, 1} },
                                 { {1, 2}, {1, 2} },
                                 { {1, 2, 3}, {1, 3} },
                                 { {1, 2, 3, 4}, {1, 4} },
                                 { {1, 2, 3, 4, 5}, {1, 5} },
                                 { {1, 2, 3, 4, 5, 6}, {1, 6} },
                                 { {1, 2, 3, 4, 5, 6, 7}, {1, 7} },
                                 { {1, 2, 3, 4, 5, 6, 7, 8}, {1, 8} },
                                 { {1, 2, 3, 4, 5, 6, 7, 8, 9}, {1, 9} },
                                 { null, new int[] {} },
                                 { new int[] {}, new int[] {} } };
                                 
short tf_swapFirstLast[][][] = { { {1, 2, 3, 4}, {4, 2, 3, 1}}, 
                                 { {8, 6, 7, 9, 5}, {5, 6, 7, 9, 8} }, 
                                 { {1}, {1} }, 
                                 { {1, 2}, {2, 1} },
                                 { {1, 2, 3}, {3, 2, 1} }, 
                                 { null, new short[] {} },
                                 { new short[] {}, new short[] {} }  };
                                 
byte tf_swapArray[][][] = { { {1, 2, 3}, {4, 5, 6} },
                            { {1, 2, 3}, {7, 8, 9} },                           
                            { {}, {} },
                            { {9, 8, 7, 6, 5, 4}, {9, 8} } };            
                            
long tf_findLong[][][] = { { {1, 12, 123, 1234, 12345, 1234, 123, 12, 1}, {5}}, 
                           { {12345678,987654310, 1, 12, Integer.MAX_VALUE}, {10}},
                           { {2345, 12, Long.MAX_VALUE, 345678}, {19}} ,
                           { null, {0} },
                           { {}, {0} } };                            
                           
long tf_findMax[][][] = { { {1, 12, 123, 1234, -12346, 12345, 123, 12, 1}, {12345} }, 
                           { {12345678,987654310, 1, 12, Integer.MAX_VALUE}, {Integer.MAX_VALUE} },
                           { {2345, 12, 1234567890, 345678}, {1234567890} } ,
                           { {-1, -10, -100, -1000, -10000, -100000}, {-1} },
                           { null, {0} },
                           { {}, {0} } };      
                           
UniversalTestParameter tf_findLongest[] = { new UniversalTestParameter(new int[][] { {1, 2}, {1, 2, 3, 4}, {1}, {1, 2, 3} }, 4),
                                           new UniversalTestParameter(new int[][]{ {}, {1}, {1}, {1, 3} },2),
                                           new UniversalTestParameter(new int[][]{ {} }, 0),
                                           new UniversalTestParameter( null2DimArray , 0),
                                           new UniversalTestParameter(new int[][]{ {1, 2, 3, 4, 5, 6, 7, 8, 9}, {1, 2, 3, 4}, {1}, {1, 2, 3} }, 9),
                                           new UniversalTestParameter(new int[][]{ {99, 2}, {100, 82, 43, 44, 7, 8, 9}, {1}, {1, 2, 3} }, 7),
                                           new UniversalTestParameter(new int[][]{ {1}, {1, 2}, {1, 2, 3}, {1, 2, 3, 4}, {1, 2, 3, 4, 5} }, 5)};         
                                           
UniversalTestParameter tf_shiftArray[] = { new UniversalTestParameter(new int[] {6, 2, 5, 3}, new int[] {2, 5, 3, 6}, true), 
                                           new UniversalTestParameter(new int[] {6, 2, 5, 3}, new int[] {3, 6, 2, 5}, false),
                                           new UniversalTestParameter(new int[] {1, 1, 2, 2, 4}, new int[] {1, 2, 2, 4, 1}, true), 
                                           new UniversalTestParameter(new int[] {1, 1, 2, 2, 4}, new int[] {4, 1, 1, 2, 2}, false),
                                           new UniversalTestParameter(new int[] {1, 2, 3}, new int[] {2, 3, 1}, true), 
                                           new UniversalTestParameter(new int[] {1}, new int[] {1}, true), 
                                           new UniversalTestParameter(new int[] {}, new int[] {}, false) };                                                         
                                           
UniversalTestParameter tf_countOddOrEven[] = { new UniversalTestParameter(new int[] {1, 2, 3, 4}, true , 2), 
                                               new UniversalTestParameter(new int[] {1, 2, 2, 4}, false , 3), 
                                               new UniversalTestParameter(new int[] {1, 2, 3, 4, 5, 6, 7, 8, 9, 0}, false , 5),
                                               new UniversalTestParameter(new int[] {1, 2, 3, 4, 5, 6, 7, 8, 9, 0}, true , 5), 
                                               new UniversalTestParameter(new int[] {1, 1, 3, 3}, true, 4), 
                                               new UniversalTestParameter(new int[] {}, true, 0),
                                               new UniversalTestParameter(new int[] {2, 4, 6, 8}, true, 0)};                                           
                                               
short tf_cutBy5[][][] = { { {1, 2, 3, 4, 5}, {1, 2, 3, 4} }, 
                          { {5, 4, 3, 2, 1}, {} }, 
                          { {1, 2, 1, 2, 1, 5, 1, 2}, {1, 2, 1, 2, 1} }, 
                          { {5, -5}, {} }, 
                          { {-5, 5}, {-5} }, 
                          { {-5, 1, 2, 3, 4, 5, 6}, {-5, 1, 2, 3, 4} }, 
                          { {5}, {} }  };     
                          
UniversalTestParameter tf_biggestDiff[] = { new UniversalTestParameter(new int[] {1, 2, 2, 4}, 3 ), 
                                            new UniversalTestParameter(new int[] {-99, -98, 98, 99}, 198 ),
                                            new UniversalTestParameter(new int[] {100, 62, 88, 4}, 96 ),
                                            new UniversalTestParameter(new int[] {1, 1, 1, 1}, 0 ), 
                                            new UniversalTestParameter(new int[] {-9,- 9, 9, 9}, 18 ),
                                            new UniversalTestParameter(new int[] {0, -1, -2, -3}, 3 )};     
                                            
byte tf_setTen[][][] = { { {1, 10, 4, 5, 30, 6}, {1, 10, 10, 10, 30, 30} }, 
                              { {2, 10, 3, 4, 20, 5}, {2, 10, 10, 10 ,20, 20} }, 
                              { {10, 1, 20, 2}, {10, 10, 20, 20}}, 
                              { {1, 10, 4, 5, 30, 6}, {1, 10, 10, 10, 30, 30}},
                              { {10, 10}, {10, 10} },
                              { {10, 1, 20, 2, 30, 3, 40, 4}, {10, 10, 20, 20, 30, 30, 40, 40} },
                              { {0, 2}, {0 , 2}}, 
                              { {1, 2, 100, 1, 6}, {1, 2, 100, 100, 100}} };  
                              
UniversalTestParameter tf_array2int[] = { new UniversalTestParameter(new int[] {1, 2, 3, 4}, 1234),
                                          new UniversalTestParameter(new int[] {1, 2, 0, 4}, 1204),
                                          new UniversalTestParameter(new int[] {1, 9, 3, 4}, 1934),
                                          new UniversalTestParameter(new int[] {1, -2, -3, 4}, 1004),
                                          new UniversalTestParameter(new int[] {}, 0),
                                          new UniversalTestParameter(nullArray, 0),
                                          new UniversalTestParameter(new int[] {5, 6, 7, 1, 2, 3, 4}, 5671234)};    
                                          
UniversalTestParameter tf_getOddOrEven[] = { new UniversalTestParameter(new int[][] { {1, 2}, {1, 2, 3, 4}, {1}, {1, 2, 3} }, false, new int[] {1, 1, 3, 1, 1, 3}),
                                             new UniversalTestParameter(new int[][] { {1, 3}, {5, 1}, {1, 3} }, true, new int[] {}),
                                             new UniversalTestParameter(new int[][] { {} }, false, new int[] {}),
                                             new UniversalTestParameter( null2DimArray, true, new int[] {}),
                                             new UniversalTestParameter(new int[][]{ {1, 2, 3, 4, 5, 6, 7, 8, 9}, {1, 2, 3, 4}, {1}, {1, 2, 3} }, true, new int[] {2, 4, 6, 8, 2, 4, 2}),
                                             new UniversalTestParameter(new int[][]{ {99, 2}, {100, 82, 43, 44, 7, 8, 9}, {1}, {1, 2, 3} }, false, new int[] {99, 43, 7, 9, 1, 1, 3}),
                                             new UniversalTestParameter(new int[][]{ {1}, {1, 2}, {1, 2, 3}, {1, 2, 3, 4}, {1, 2, 3, 4, 5} }, true, new int[] {2, 2, 2, 4, 2, 4})};                                               
