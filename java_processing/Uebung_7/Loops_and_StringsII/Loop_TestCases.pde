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
}
String nullString = null;
// Testfelder für die einzelnen Funktionen/Methoden
// Letztes Element ist immer das zu erwartende Ergebnis
// alle Elemente davor, sind die Parameter für die einzelnen Funktionen/Methoden

UniversalTestParameter tf_isTautogramm[] = { new UniversalTestParameter("Veni vidi vici", true),
                                             new UniversalTestParameter("Milch macht müde Männer munter", true),
                                             new UniversalTestParameter("Wir Wiener Waschweiber würden weiße Wäsche waschen wenn wir wüssten wo warmes Wasser wär", true),
                                             new UniversalTestParameter("", false),
                                             new UniversalTestParameter(nullString, false),
                                             new UniversalTestParameter("Zehn zahme Ziegen zogen zügig zwei Zentner Zucker zum Zoo", true),
                                             new UniversalTestParameter("Fischers Fritz fischt frische Fische frische Fische fischt Fischers Fritz", true),
                                             new UniversalTestParameter("Kleine Kinder können keine kleinen Kirschkerne ka... ne essen", false),
                                             new UniversalTestParameter("Fixe Fahrer fahren Fox", true)};   

//Testfälle für getCrossSum
byte tf_getCrossSumByte[][] = { {57, 12}, 
                                {-75, 12}, 
                                {123, 6}, 
                                {99, 18}, 
                                {119, 11}, 
                                {-111, 3},
                                {0, 0} }; 
//Testfälle für getCrossSum
short tf_getCrossSumShort[][] = { {19918, 28}, 
                                  {-27479, 29}, 
                                  {27979, 34}, 
                                  {-9999, 36}, 
                                  {24489, 27}, 
                                  {-11111,5},
                                  {0,0} }; 
//Testfälle für getCrossSum
long tf_getCrossSumLong[][] = { {2008196864, 44}, 
                                {-1000000000, 1}, 
                                {1659790976, 59}, 
                                {1119418368, 42}, 
                                {1234567890, 45}, 
                                {1999999999, 82},
                                {0,0} }; 
//Testfälle für getCrossSum                                
UniversalTestParameter tf_getCrossSumString[] = { new UniversalTestParameter("12345", 15),
                                                  new UniversalTestParameter("-1234", 10), 
                                                  new UniversalTestParameter("", 0),
                                                  new UniversalTestParameter(nullString, 0),
                                                  new UniversalTestParameter("02764189744379", 71),
                                                  new UniversalTestParameter("10000000000000000000000000000000000000000000000000", 1),
                                                  new UniversalTestParameter("99999999999999999999999999999999999999999999999999", 450)}; 
                                

//Testfälle für getMaxBlock
UniversalTestParameter tf_getMaxBlock[] = { new UniversalTestParameter("hoopla", 2),
                                           new UniversalTestParameter("abbCCCddBBBxx", 3),
                                           new UniversalTestParameter("", 0),
                                           new UniversalTestParameter(nullString, 0),
                                           new UniversalTestParameter("abbbcbbbxbbbx", 3),
                                           new UniversalTestParameter("XX2222BBBbbXX2222", 4),
                                           new UniversalTestParameter("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX", 50)};          

UniversalTestParameter tf_endsWith[] = { new UniversalTestParameter("Wirtschaft", "Schaft", false, true), 
                                         new UniversalTestParameter("Bier holen", "hole Bier", false, false), 
                                         new UniversalTestParameter("Wunder", "Wirtschaftswunder", false, true), 
                                         new UniversalTestParameter("HalliHallo", "hallo", false, true), 
                                         new UniversalTestParameter("Bier", "Schwarzbier", true, false), 
                                         new UniversalTestParameter("Käsekuchen", "Käse", false, false), 
                                         new UniversalTestParameter("", "Hase", true, true), 
                                         new UniversalTestParameter("N", "Hasen", true, false),
                                         new UniversalTestParameter("", "", true, true) };
                                
UniversalTestParameter tf_isPangramm[] = { new UniversalTestParameter("Vogel Quax zwickt Johnys Pferd Bim", true),
                                         new UniversalTestParameter("Programmieren Praktikum", false),
                                         new UniversalTestParameter("Sylvia wagt quick den Jux bei Pforzheim", true),
                                         new UniversalTestParameter("", false),
                                         new UniversalTestParameter(nullString, false),
                                         new UniversalTestParameter("Prall vom Whisky flog Quax den Jet zu Bruch", true)};                                                         

UniversalTestParameter tf_checkBrackets[] = { new UniversalTestParameter("()/*{[/*]}<>*/", true),
                                              new UniversalTestParameter("checkBrackets(()()) a)", false),
                                              new UniversalTestParameter("(({[[{]]}))<()>", false),
                                              new UniversalTestParameter("", true),
                                              new UniversalTestParameter(nullString, true),
                                              new UniversalTestParameter("/**/sin() cos() feld[][] getNetto() <!-- -->", true)};         

UniversalTestParameter tf_checkBracketsWC[] = { new UniversalTestParameter("()/*{[]}<>*/", true),
                                                new UniversalTestParameter("checkBrackets(()()) a)", false),
                                                new UniversalTestParameter("(({[[{]]}))<()>", false),
                                                new UniversalTestParameter("/* Dies ist ein Test */", true),
                                                new UniversalTestParameter("/* Dies /*ist*/ ein Test */", true),
                                                new UniversalTestParameter("/* Dies /*ist ein Test */", false),
                                                new UniversalTestParameter("", true),
                                                new UniversalTestParameter(nullString, true),
                                                new UniversalTestParameter("/**/sin() cos() feld[][] getNetto() <!-- -->", true)};       

UniversalTestParameter tf_stringSort[] = { new UniversalTestParameter("Auszug aus dem Alphabet", "Klappt es","auauaeueaaeklszppgt  ss dm lphbt"),
                                           new UniversalTestParameter("Programmieren Praktikum", "ernstl", "eoaieeaiuprrngsrtlmmrn prktkm"),
                                           new UniversalTestParameter("Wirtschaftsinformatik", "aeiou", "aieiouaioaiwrtschftsnfrmtk"),
                                           new UniversalTestParameter("Wirtschaftsinformatik", "", "iaioaiwrtschftsnfrmtk"),
                                           new UniversalTestParameter("", "Programmieren in Java",  "oaieeiaaprgrmmrn n jv"),
                                           new UniversalTestParameter("Blabla", "Blublu", "auaubbllbbll"),
                                           new UniversalTestParameter("", "", ""),
                                           new UniversalTestParameter(nullString, "", ""),
                                           new UniversalTestParameter("", nullString, ""),
                                           new UniversalTestParameter("abc", "def", "aedbcf"),
                                           new UniversalTestParameter("Wodka Whisky", "adehikosuwy", "aoeaioiuwddkh kwhsswkyy")};   

UniversalTestParameter tf_getISBN[] = { new UniversalTestParameter("ISBN 3-499-13599-", "ISBN 3-499-13599-X"),
                                        new UniversalTestParameter("ISBN 3-446-19313-", "ISBN 3-446-19313-8"),
                                        new UniversalTestParameter("ISBN 0-7475-5100-", "ISBN 0-7475-5100-6"),
                                        new UniversalTestParameter("ISBN 1-57231-422-", "ISBN 1-57231-422-2"),
                                        new UniversalTestParameter("", ""),
                                        new UniversalTestParameter(nullString, ""),
                                        new UniversalTestParameter("ISBN 3-8077-0171-", "ISBN 3-8077-0171-0")};
                                        
UniversalTestParameter tf_checkIdCard[] = { new UniversalTestParameter("L9V2Y8W6W", "L9V2Y8W6W3"),
                                            new UniversalTestParameter("T22000129", "T220001293"),
                                            new UniversalTestParameter("L01X00T47", "L01X00T471"),
                                            new UniversalTestParameter("122000129", "1220001297"),
                                            new UniversalTestParameter("", ""),
                                            new UniversalTestParameter(nullString, ""),
                                            new UniversalTestParameter("LZ6311T47", "LZ6311T475")};                                                
