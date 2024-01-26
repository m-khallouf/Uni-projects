// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:       25.10.22
// Beschreibung: Zwei Quadrate die das Maus verfolgen mit Linien und X,Y Koordinaten werden ausgegeben


void setup(){
    size(800,800);
    surface.setTitle("Folge der Maus");
}

void draw(){
  background(255);
  fill(255,255,0);
  rectMode(CENTER);
  rect(mouseX, mouseY, 40,40);
  
  fill (200,200,200); 
  rectMode(CENTER);
  rect (mouseX, mouseY, 20, 20);
  
  stroke(120);
  line(0, mouseY, mouseX, mouseY);
  line(mouseX, 0, mouseX, mouseY);
  line(mouseX, mouseY, 800, mouseY);
  line(mouseX, mouseY, mouseX, 800);

  
  textSize(15);
  fill(255,0,0);
  text("X: " + mouseX,mouseX-60, mouseY);  
  text("Y: " + mouseY,mouseX, mouseY-25);
  println("X: " + mouseX + " Y: " + mouseY);

  
}

/**
* Zu 1 Antwort: man sollte die Befehle im setup() platzieren, 
  die nur einmal am start das programm ausgefuehrt werden.
* Zu 2 Antwort: Am sonsten werden die Befehle mehrmals wiederholt.
*/
