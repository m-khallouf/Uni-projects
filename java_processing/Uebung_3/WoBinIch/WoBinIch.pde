// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:        11.11.22
// Beschreibung: mouse hover effect


void setup(){
    size(800,800);
    background(0);
    surface.setTitle("wo bin ich?");

}

void draw(){
  background(0);

  rectMode(CENTER);
  
  if(mouseX > 200 && mouseY > 200 && mouseX < 600 && mouseY < 600){
    stroke(255,0,0);
    strokeWeight(8);
    noFill();
    rect(width/2, height/2, width/2, height/2);
  } else {
    noFill();
    stroke(255);
    strokeWeight(1);
    rect(width/2, height/2, width/2, height/2);
  }
  
  textSize(30);
  fill(255);
  text("200/200", width/4, height/4);
  text("600/600", (width/4)*3, (height/4)*3);
  
  text(mouseX,mouseX-50,mouseY);
  text(mouseY,mouseX,mouseY);
  
  
  
}
