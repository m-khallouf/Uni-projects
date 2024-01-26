// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:        11.11.22
// Beschreibung: mouse hover effect mit Hintergrundsfarbe aenderung


void setup(){
    size(900,900);

}

void draw(){
  background(0);
  
  if(mouseX > 50 && mouseY > 50 && mouseX < 250 && mouseY < 250){
    background(255,0,0);
  } else if(mouseX > 350 && mouseY > 350 && mouseX < 550 && mouseY < 550){
    background(0,255,0);
  } else if(mouseX > 650 && mouseY > 650 && mouseX < 850 && mouseY < 850){
    background(0,0,255);
  } else {
    background(0);
  }
  
  fill(255,0,0);
  stroke(0,255,0);
  strokeWeight(3);
  rect(50,50,200,200);
  
  fill(0,255,0);
  stroke(255,0,0);
  strokeWeight(3);
  rect(350,350,200,200);
  
  fill(0,0,255);
  stroke(255,165,0);
  strokeWeight(3);
  rect(650,650,200,200);
  
  
}
