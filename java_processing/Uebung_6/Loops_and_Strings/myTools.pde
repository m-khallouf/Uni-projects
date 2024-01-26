// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!!
// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!!
// DON'T TOUCH!!!   DON'T TOUCH!!!   DON'T TOUCH!!!

/**
* Methodenname:    textHeadline  
* Datum:           10.05.2021
* Autor:           Gurn
* Beschreibung:    Ruft textHeadline standardmäßig mit Datumsinformationen auf
* @param headline  beinhaltet die Überschrift
*/
public void textHeadline(String headline){
  textHeadline(headline,true);
}


/**
* Methodenname:        textHeadline  
* Datum:               10.05.2021
* Autor:               Gurn
* Beschreibung:        Ruft textHeadline standardmäßig mit Datumsinformationen auf
* @param headline      beinhaltet die Überschrift
* @param bWithDateInfo - true mit Datums-/Zeitinformationen
*                      - false ohne Datums-/Zeitinformationen
*/
public void textHeadline(String headline, boolean bWithDateInfo){
  
  Date date = java.util.Calendar.getInstance().getTime();
  SimpleDateFormat dateFormatter = 
            new SimpleDateFormat("dd.MM.yyyy HH:mm:ss,SSS");
  String dateString = dateFormatter.format(date);
  
  if (bWithDateInfo)      
    System.out.println("\n\n" + headline + "    " + dateString);
  else
    System.out.println("\n\n" + headline);
  
  System.out.println(new String(new char[headline.length()]).replace("\0", "="));  
} 

  
/**
* Methodenname:  skull  
* Datum:         10.05.2021
* Autor:         Gurn
* Beschreibung:  gibt einen ASCII-Totenkopf auf der Konsole aus
*/  
public void skull(){
  System.out.println("     _.--\"\"--._");
  System.out.println("    /  _    _  \\");
  System.out.println(" _  ( (_\\  /_) )  _");
  System.out.println("{ \\._\\   /\\   /_./ }");
  System.out.println("/_\"=-.}______{.-=\"_\\      laut RuntimeConfig noch nicht implementiert");
  System.out.println(" _  _.=(\"\"\"\")=._  _");
  System.out.println("(_\'\"_.-\"`~~`\"-._\"\'_)");
  System.out.println(" {_\"            \"_}");  
}

  
/**
* Methodenname:       fillString
* Datum:              10.05.2021    
* Autor:              Gurn
* Beschreibung:       Erzeugt einen Füllstring mit der übergebenen Zeichenfolge in der übergebenen Länge
* @param len          Wie lang soll der Füllstring werden
* @param fillString   Was soll im Füllstring stehen
* @return String      der gewünschte Füllstring in der gewünschten Länge
*/
public String fillString(int len, String fillString){
    return new String(new char[len]).replace("\0", fillString);
}
  

/**
* Methodenname:     okOrError
* Datum:            10.05.2021
* Autor:            Gurn
* Beschreibung:     Gibt OK oder Fehlermeldung auf der Konsole aus
* @param bErgebnis  - true - Ergebnisprüfung war ok  
*                   - false - Ergebnisprüfung war nicht ok  
*/
public void okOrError(boolean bErgebnis){
  if(bErgebnis)
    println("OK");
  else
    System.err.println("Fehler");
}

/**
* Methodenname:       b2Str
* Datum:              10.05.2021    
* Autor:              Gurn
* Beschreibung:       Konvertiert einen boolschen Wert in einen String
                      true  -> "Ja"
                      false -> "Nein"
* @param bWert        zu konvertierender logischer Wert
* @return String      "Ja" oder "Nein"
*/
String b2Str(boolean bWert) {
    return ((bWert) ? "Ja" : "Nein");
  }

/**
* Methodenname:   traceConsole
* Datum:          10.05.2021
* Autor:          Gurn
* Beschreibung:   Konsolenausgabe wird in die Datei "output.txt" umgeleitet
*/
void traceConsole(){
  String dateiname = sketchPath("") + "output.txt";
  
  System.err.println("Achtung! Trace in Datei wurde eingeschaltet");
  System.err.println("Konsolenausgaben werden jetzt in die Datei");
  System.err.println(dateiname + " umgeleitet");
  System.err.println("Zum Ausschalten bTraceCosole wieder auf false setzen");
  
  PrintStream out = null;  
  try {
    out = new PrintStream(new FileOutputStream(dateiname));
  } 
  catch (FileNotFoundException e) {
    e.printStackTrace();
  }
  System.setOut(out);
  
}


/**
* Methodenname:   getYesNo
* Datum:          22.11.2022
* Autor:          Gurn
* Beschreibung:   Dialog für Ja/Nein anzeigen
* @param pMessage Message, die angezeigt werden soll
* @return boolean - true -> Ja-Button 
                  - false -> Nein-Button moder Abbruch
*/
public boolean getYesNo(String pMessage){
  int ergebnis = JOptionPane.showConfirmDialog(null, pMessage);
  return (ergebnis == JOptionPane.YES_OPTION);
}


/**
* Methodenname:   show
* Datum:          22.11.2022
* Autor:          Gurn
* Beschreibung:   Messagebox anzeigen
* @param pMessage Message, die angezeigt werden soll
*/   
public  void show(String pMessage){
  JOptionPane.showMessageDialog(null, pMessage);       
}
