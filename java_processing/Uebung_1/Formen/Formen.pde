// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:       25.10.22
// Beschreibung: Verschiedener Formen und Deckungskraft


void setup(){
    size(800,800);
    background(120);
    
    fill(50);
    noStroke();
    circle(2*width/4, 1*height/4, 400);
    
    fill(150,0,0);
    noStroke();
    triangle(2*width/4, 2*height/4, 1*width/4, height/1, 3*width/4, height/1);
    
    fill(0,0,255,80);
    noStroke();
    rect(0, 1*height/4, 2*width/4, 2*height/4);
    
    fill(0,255,0,80);
    noStroke();
    quad(2*width/4, 1*height/4, width/1, 1*height/4, width/1, 3*height/4, 2*width/4, 3*height/4);    
    

}

/**
 *Zu 1 Antwort: man kann mit dem die Deckungskraft auch abstimmen.
 *ZU 2 Antwort: es kann mit 3 Parametern die Farbe bestimmten und mit 
 *der Viertten wird die Deckungskraft festgelegt.
*/
