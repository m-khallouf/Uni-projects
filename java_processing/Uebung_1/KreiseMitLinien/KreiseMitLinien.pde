// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:       25.10.22
// Beschreibung: Linien mit verschiedenen endTyp


void setup(){
    size(800,800);
    background(0);
    surface.setTitle("Linien mit verschiedenenEnden");
    
    //Kreis
    fill(255);
    circle(1*width/4, height/2, 40);
    
    fill(255);
    circle(3*width/4, height/2, 40);
    
    
    //Linke Linie
    stroke(255,0,0);
    strokeWeight(20);
    strokeCap(ROUND);
    line(1*width/4,20,1*width/4,height-20);
    
    //Rechte Linie
    stroke(255,0,0);
    strokeWeight(20);
    strokeCap(PROJECT);
    line(3*width/4, 20, 3*width/4, 370);
    
    stroke(255,0,0);
    strokeWeight(20);
    strokeCap(PROJECT);
    line(3*width/4, height/2, 3*width/4, height/1);
    
    
    //Mittlere Linie
    stroke(255,0,0);
    strokeWeight(20);
    strokeCap(SQUARE);
    line(2*width/4, 0, 2*width/4, height/1);
    
    fill(255);
    noStroke();
    circle(2*width/4, height/2, 40);

}
