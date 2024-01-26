// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:       03.11.22
// Beschreibung: Verschiedner Schriftarten installieren und ausprobieren


void setup(){
    size(1400,400);
    background(100);
    
    fill(0);
    rect(0,10,1400,50);
    
    textAlign(LEFT);
    textSize(20);
    fill(255);
    text("Schriftart", 20,40);
    
    textAlign(RIGHT);
    text("Breite von \"Programmieren Praktikum\"", width - 20, 40);
    
    //tabelle
    rect(0, 50, 1400, 240);
    line(0, 90, 1400, 90);
    line(0, 130, 1400, 130);
    line(0, 170, 1400, 170);
    line(0, 210, 1400, 210);
    line(0, 250, 1400, 250);
    line(0, 290, 1400, 290);
    line(width/2, 10, width/2, 290);
    
    fill(0);
    textAlign(LEFT);
    text("Standardschrift", 20, 80);
    textAlign(RIGHT);
    text("Breite von \"Programmieren Praktikum\"" + ": " + round(textWidth("Programmieren Praktikum")), width - 20, 80);
    
    textAlign(LEFT);
    textFont(createFont("Arial", 20));
    text("Schriftart: Arial", 20, 120);
    textAlign(RIGHT);
    text("Breite von \"Programmieren Praktikum\"" + ": " + round(textWidth("Programmieren Praktikum")), width - 20, 120);
    
    textAlign(LEFT);
    textFont(createFont("Courier New", 20));
    text("Schriftart: Courier New", 20, 160);
    textAlign(RIGHT);
    text("Breite von \"Programmieren Praktikum\"" + ": " + round(textWidth("Programmieren Praktikum")), width - 20, 160);
    
    textAlign(LEFT);
    textFont(createFont("Trebuchet MS", 20));
    text("Schriftart: Trebuchet MS", 20, 200);
    textAlign(RIGHT);
    text("Breite von \"Programmieren Praktikum\"" + ": " + round(textWidth("Programmieren Praktikum")), width - 20, 200);
    
    textAlign(LEFT);
    textFont(createFont("Impact", 20));
    text("Schriftart: Impact", 20, 240);
    textAlign(RIGHT);
    text("Breite von \"Programmieren Praktikum\"" + ": " + round(textWidth("Programmieren Praktikum")), width - 20, 240);
    
    textAlign(LEFT);
    textFont(createFont("Times New Roman Bold Italic", 20));
    text("Schriftart: Times New Roman Bold Italic", 20, 280);
    textAlign(RIGHT);
    text("Breite von \"Programmieren Praktikum\"" + ": " + round(textWidth("Programmieren Praktikum")), width - 20, 280);
    
    textAlign(CENTER);
    fill(0,0,255);
    text("https://elearning.rwu.de/course/view.php?id=2040", width/2, 350);
    stroke(0,0,255);
    line(491, 351, 900, 351);
}

void draw(){

}
