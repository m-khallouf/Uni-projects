// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:        25.10.22
// Beschreibung: Linien in verschiedenen Staerken und Farben in 4 Quadranten zeichnen


void setup(){
    background(255);
    size(800,800);
    //size(800,400);
    //size(400,800);
    
    //Quadrat
    fill(0);
    rect(0, 0, width/2, height/2);
    
    fill(0);
    rect(width/2, height/2, width/2, height/2);
    
    //Die Lienie im Quadrat Nr. I
    strokeWeight(2);
    stroke(0);
    line(width/2, 0, (width/4) * 3, height/4);
   
    strokeWeight(4);
    stroke(255,0,0);
    line(width/1, 0, (width/4) * 3, height/4);
     
    strokeWeight(8);
    stroke(0,255,0);
    line(width/2, height/2, (width/4) * 3, height/4);
    
    strokeWeight(16);
    stroke(0,0,255);
    line(width/1, height/2, (width/4) * 3, height/4);
    
    //Der Kreis im Quadrat Nr.I
    fill(100);
    noStroke();
    circle((width/4) * 3, height/4, 30);
    
    //Die Linie im Quadrant Nr.II
    strokeWeight(2);
    stroke(255);
    line(0, 0, width/4, height/4);
    
    strokeWeight(8);
    stroke(255, 0,0);
    line(width/2, 0, width/4, height/4);
    
    strokeWeight(4);
    stroke(0,255,0);
    line(0,height/2,width/4,height/4);
    line(0, height/2, width/4, height/4);
    
    strokeWeight(16);
    stroke(0,0,255);
    line(width/2, height/2, width/4, height/4);
    
    //Der Kreis im Quadrat Nr.II
    fill(100);
    noStroke();
    circle(width/4, height/4, 30);
    
    //Die Linie im Quadrant Nr. III
    strokeWeight(2);
    stroke(0);
    line(0, height/2, width/4, (height/4) * 3);
    
    strokeWeight(4);
    stroke(255,0,0);
    line(width/2, height/2, width/4, (height/4) * 3);
    
    strokeWeight(8);
    stroke(0,255,0);
    line(0, height/1, width/4, (height/4) * 3);
    
    strokeWeight(16);
    stroke(0,0,255);
    line(width/2, height/1, width/4, (height/4) * 3);
    
    //Der Kreis im Quadrat Nr.III
    fill(100);
    noStroke();
    circle(width/4, (height/4) * 3, 30);
    
    //Die Lienie im Quadrat Nr.IV
    strokeWeight(2);
    stroke(255);
    line(width/2, height/2, (width/4) * 3, (height/4) * 3);
    
    strokeWeight(4);
    stroke(255,0,0);
    line(width/1, height/2, (width/4) * 3, (height/4) * 3);
    
    strokeWeight(8);
    stroke(0,255,0);
    line(width/2, height/1, (width/4) * 3, (height/4) * 3);
    
    strokeWeight(16);
    stroke(0,0,255);
    line(width/1, height/1, (width/4) * 3, (height/4) * 3);
    
    //Der Kreis im Quadrat Nr. IV
    fill(100);
    noStroke();
    circle((width/4) * 3, (height/4) * 3, 30);
}

/**
 *Zu 1.1 Antwort: fill() Legt die Farbe fest, die zum Füllen von Formen verwendet wird.
 *Zu 1.2 Antwort: stroke() Legt die Farbe fest, die zum Zeichnen von Linien und Rahmen um Formen verwendet wird.
 *Zu 2.0 Antwort: Die Verwendung von Systemvariablen width und width spart schreibaufwand, 
  wenn zum beispiel die Breite/Hoehe sich aendert, muss man nur einem stelle es aendern, 
  wo die Variable Width/Hoehe initialisiert sind.
 *Die Reihenfolge ist wichtig, weil der Compiler den Code sequentiell uebersetzt.
*/
