// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!!
// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!!
// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!!

class UniversalTestParameter{
  boolean bBoolpar1;
  int[] erstesFeld;
  int[] zweitesFeld;  
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

  public UniversalTestParameter(int[] feld1, int[] feld2, boolean bValue){
      this.erstesFeld = feld1;
      this.zweitesFeld = feld2;
      this.bExpected_or_Direction = bValue;
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
}
String nullString = null;
// Testfelder für die einzelnen Funktionen/Methoden
// Letztes Element ist immer das zu erwartende Ergebnis
// alle Elemente davor, sind die Parameter für die einzelnen Funktionen/Methoden

//Testfälle für getFactorial
long tf_getFactorial[][] = {{0,1},
                            {1,1},
                            {2,2},
                            {3,6},
                            {4,24},
                            {5,120},
                            {6,720},
                            {8,40320},
                            {9,362880},
                            {10,3628800} };
  
//Testfälle für existWi
UniversalTestParameter tf_existWi[] = { new UniversalTestParameter("abcWi",true), 
                                        new UniversalTestParameter("xyzIOMabc",false),
                                        new UniversalTestParameter("Einmal WI immer WI",true),
                                        new UniversalTestParameter("iw oder wp oder iom",false),
                                        new UniversalTestParameter("wieder wp",true), 
                                        new UniversalTestParameter("weder wp noch w iom",false), 
                                        new UniversalTestParameter("",false), 
                                        new UniversalTestParameter(nullString,false) };    

//Testfälle für count5or7
int tf_count5or7[][] = { {5,1}, 
                         {7,1}, 
                         {57,2}, 
                         {777,3}, 
                         {123,0}, 
                         {-57,2},
                         {0,0} }; 
                         
//Testfälle für getCharCount
UniversalTestParameter tf_getCharCount[] = { new UniversalTestParameter("Programmieren mit Java ist spitze!!! - Oder?", 2, 30),
                                             new UniversalTestParameter("Programmieren mit Java ist spitze!!! - Oder?", 1, 3),
                                             new UniversalTestParameter("Digital Business", 2, 13),
                                             new UniversalTestParameter("Digital Business", 1, 2),
                                             new UniversalTestParameter(" !\"#$%&'()*+,-.:;<=>?@[\\]^_`{|}~", 4, 32),
                                             new UniversalTestParameter(" !\"#$%&'()*+,-./0123456789", 3, 10),
                                             new UniversalTestParameter("", 1, 0),
                                             new UniversalTestParameter(null, 1, 0)};

//Testfälle für getWithoutVowel
UniversalTestParameter tf_getWithoutVowel[] = { new UniversalTestParameter("Programmieren, Java, Oh Jeh",false,"Programmieren, Java, h Jeh"),
                                                new UniversalTestParameter("Programmieren, Java, Oh Jeh",true,"Prgrmmrn, Jv, Oh Jh"),
                                                new UniversalTestParameter("AEIOUaeiou",false,"aeiou"),
                                                new UniversalTestParameter("AEIOUaeiou",true,"AEIOU"),
                                                new UniversalTestParameter("",true,""),
                                                new UniversalTestParameter(null,true,"")};                                              

//Testfälle für mixString
String tf_mixString[][] = { {"abc","xyz","axbycz"},
                            {"Hallo","Wi","HWaillo"},
                            {"Hallo","","Hallo"}, 
                            {"","Welt","Welt"}, 
                            {"","",""}, 
                            {"Was Geht?","","Was Geht?"},
                            {"Programmieren","Praktikum","PPrroagkrtaimkmuimeren"}, 
                            {"WB","WP","WWBP"},
                            {"Und","Tschüß","UTnsdchüß"} };
                            
//Testfälle für repeatStart
UniversalTestParameter tf_repeatStart[] = { new UniversalTestParameter("Wirtschaft",4,"WirtWirWiW"), 
                                            new UniversalTestParameter("Wirtschaft",3,"WirWiW"), 
                                            new UniversalTestParameter("Döner",5,"DönerDöneDönDöD"), 
                                            new UniversalTestParameter("Java",4,"JavaJavJaJ"), 
                                            new UniversalTestParameter("Weizen",3,"WeiWeW"), 
                                            new UniversalTestParameter("Bier",2,"BiB"), 
                                            new UniversalTestParameter("Sekt",1,"S"),
                                            new UniversalTestParameter("",5,"")};   
                                           
//Testfälle für getPairs
String tf_getPairs[][] = { {"012345678","01458"}, 
                           {"abcdefghijklmnopqrstuvwxyz","abefijmnqruvyz"}, 
                           {"Programmieren","Prraien"},
                           {"Praktikum","Prtim"},
                           {"",""},
                           {"Wirtschaftsinformatik","Wiscftnfmak"},
                           {"Bin erst","Bier"},
                           {"Der Die Das","DeDiDa"} };    
                                              

//Testfälle für replaceChar                           
UniversalTestParameter tf_replaceChar[] = { new UniversalTestParameter("Monitor", 'o', 'a', "Manitar"),
                                            new UniversalTestParameter("Wein", 'W', 'B', "Bein"),
                                            new UniversalTestParameter("", 'a', 'z', ""),
                                            new UniversalTestParameter(null, 'X', 'Y', ""),
                                            new UniversalTestParameter("Bein", 'n', 'r', "Beir"),
                                            new UniversalTestParameter("Beir", 'i', 'a', "Bear"),
                                            new UniversalTestParameter("Bear", 'e', 'i', "Biar"),
                                            new UniversalTestParameter("Biar", 'a', 'e', "Bier")};    
 
//Testfälle für mixNumber
UniversalTestParameter tf_mixNumber[] = { new UniversalTestParameter(1234,5678, 15263748),
                                          new UniversalTestParameter(1111, 222, 1212121),
                                          new UniversalTestParameter(11, 2222, 121222),
                                          new UniversalTestParameter(12345, 54321, 1524334251),
                                          new UniversalTestParameter(-135, 246, -123456)};

//Testfälle für delDoubleChar
String tf_delDoubleChar[][] = { { "Giraffe", "Girafe" }, 
                                { "Danger!!!", "Danger!" },  
                                { "", "" }, 
                                { null, null },
                                { "Ich bin kurz für kleine Affen. - Bitte?? - Makaken", "Ich bin kurz für kleine Afen. - Bite? - Makaken" } };

//Testfälle für countDigit
UniversalTestParameter tf_countDigit[] = { new UniversalTestParameter("88410 Weingarten, Lazarettstr. 1", 22),
                                           new UniversalTestParameter("4711 + 0815 = 5526", 45),
                                           new UniversalTestParameter("int Max.: " + Integer.MAX_VALUE + "   int Min.: " + Integer.MIN_VALUE, 93),
                                           new UniversalTestParameter("Fasnet 11.11.2022 11:11 - 21.02.2023 19:00", 36),
                                           new UniversalTestParameter("1111 1111 (FF) + 1 = 1 0000 0000 (100)", 11),
                                           new UniversalTestParameter("11 ^ 11 = 285.311.670.611", 45) };          
                                                      
//Testfälle für ersetzeMitWasAuchImmer
String tf_replaceWithWhatever [][] = { {"abcwidwied","wi","-","---wi-wi--"},
                                          {"wi123wp123","12","+","++12+++12+"}, 
                                          {"w","w","A","w"}, 
                                          {"1234567890","345678","!","!!345678!!"},
                                          {"xxx","x","y","xxx"},
                                          {"xxxx","y","|","||||"},
                                          {"Hexe","x",".","..x."}, 
                                          {"Hexxen","e","#","#e##e#"} };           
                                  
//Testfälle für isPalindrom
UniversalTestParameter tf_isPalindrom[] = { new UniversalTestParameter("Hannah", false, true),
                                            new UniversalTestParameter("Hannah", true, false),
                                            new UniversalTestParameter("Regallager", false, true),
                                            new UniversalTestParameter("neben", true, true),
                                            new UniversalTestParameter("", true, false),
                                            new UniversalTestParameter(null, false, false),
                                            new UniversalTestParameter("Reittier", false, true),
                                            new UniversalTestParameter("Reliefpfeiler", false, true) };
                                            
//Testfälle für testPassword                                            
UniversalTestParameter tf_testPassword[] = { new UniversalTestParameter("Ab345678", 8, 2, 2, false),
                                             new UniversalTestParameter("Ab34567!", 8, 2, 2, true),
                                             new UniversalTestParameter("Ab34567!", 9, 2, 2, false),
                                             new UniversalTestParameter("södkfG1876!*", 10, 2, 4, true),
                                             new UniversalTestParameter("södkfG1876!*", 10, 7, 4, false),
                                             new UniversalTestParameter("södkfG1876!*", 10, 6, 4, true),
                                             new UniversalTestParameter("södkfG18761g", 10, 6, 4, false),
                                             new UniversalTestParameter("södkfG1876!*", 10, 2, 5, false),
                                             new UniversalTestParameter("", 10, 2, 5, false),
                                             new UniversalTestParameter(null, 10, 2, 5, false) };                                            
