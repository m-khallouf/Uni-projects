// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:       03.11.22
// Beschreibung: Fensterposition und Mausbewegung effekte


void setup(){
  size(500,500);
  surface.setTitle("Mein Fenster bewegt sich");
  surface.setLocation(0,0);
}

void draw(){
  
}

//quadrat wird gezeichnet, bei der Mausbewgung
void mouseMoved(){
  fill(153,50,204);
  rect(mouseX, mouseY, 50,50);
}

//Festerposition wird geaendert sobald die Maustaste gedrueckt wird
void mousePressed(){
  surface.setLocation(displayWidth - width,0);
  surface.setTitle("Fenster oben rechts");
  
}

//Kreis wird gezeichnet, wenn der Maus gedrueckt und bewegt wir
void mouseDragged(){
  fill(255,255,0);
  circle(mouseX,mouseY, 50);
}

//Festerposition wird geaendert sobald bel. Taste gedrueckt wird
void keyPressed(){
  surface.setLocation((displayWidth - width)/2, (displayHeight - height)/2);
  surface.setTitle("Fenster in der Mitte");
  
}

//Festerposition wird geaendert sobald das Mausrad gedrueckt wird
void mouseWheel(){
  surface.setLocation(0,displayHeight-height);
  surface.setTitle("Fenster unten links");
}
