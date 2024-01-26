// Autor:       Michael Gurn
// Matrikelnr.: 4711 oder 0815
// Date:         
// Description: Hier kommt die Beschreibung rein
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Optional;
import java.io.*;
import java.util.Arrays;
import javax.swing.JOptionPane;


// Umleiten der Konsolenausgabe einschalten
boolean bTraceConsole = false;

// Welche Funktionen/Methoden sind implementiert?
boolean bgetFactorial = true;
boolean bexistWi_done = true;
boolean bcount5or7_done = true;
boolean bgetCharCount_done = true;
boolean bgetWithoutVowels_done = true;
boolean bMixString_done = true;
boolean brepeatStart_done = false;
boolean bGetPairs_done = false;
boolean breplaceChar_done = true;
boolean bmixNumber_done = true;
boolean bdelDoubleChar_done = true;
boolean bcountDigit_done = true;
boolean breplaceWithWhatever_done = false;
boolean bisPalindrom = true;
boolean btestPassword_done = true;
PImage skull;

void setup(){
  size(300,100);
    
  surface.setTitle("Loops and Strings");
  // Skizze oben links vom Bildschirm positionieren
  surface.setLocation(0, 0);
  skull = loadImage("skull.jpg");  
  // Konsole umleiten ?
  if(!bTraceConsole)
    bTraceConsole = getYesNo("Ausgabe der Konsole in Datei umleiten?");
  if (bTraceConsole){
      surface.setSize(skull.width / 2,skull.height / 2);
      surface.setLocation((displayWidth - width) / 2, (displayHeight - height) / 2);
      textAlign(CENTER);
      textSize(60);
      traceConsole();
  }
  
  // Testaufrufe      
  testLoops();
   
  textAlign(CENTER,CENTER);
  textSize(40);
  fill(0);
  text("FERTIG",width/2, height/2);
}

void draw() {
  if(bTraceConsole){
    background(0);
    image(skull, 0, 0, skull.width/2, skull.height/2);
    fill(255, 0, 0);    
    text("Herzlich Wiillkommen!",width / 2, 50);
  }
} 
