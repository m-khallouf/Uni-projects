// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:       03.11.22
// Beschreibung: Datum, Uhrzeit, FrameCount, Millisekunde, Loop und formatierte Ausgabe


void setup(){
    size(600,400);
}

void draw(){
    //Konsole Ausgabe
    System.out.printf("%02d.%02d.%4d - ", day(), month(), year());
    System.out.printf("%02d:%02d:%02d", hour(), minute(), second());
    println("           " +"Framecount: "+frameCount + "           " + "Millieseconds: " + millis());

    background(155);
    fill(0);
    textSize(30);
    
    textAlign(RIGHT);
    text(String.format("%02d:%02d:%02d",hour(),minute(),second()), width - 10,30);
    textAlign(LEFT);
    text(String.format("%02d.%02d.%4d",day(),month(),year()), 10,30);
    
    
    textAlign(CENTER);
    fill(255);
    text("Stopp mit bel. Maustaste", width/2, 150);
    text("Start mit bel. Taste", width/2, 200);
    text("Framecount: " + frameCount, width/2, 250);
    fill(255,0,0);
    text("Millisekunden seit Start: " + millis(), width/2, 400 ); 
    

}

//mit beliebeger maustaste das Programm stoppen
void mousePressed(){
  noLoop();
}

//mit beliebeger Taste das Programm fortsetzen
void keyPressed(){
  loop();
}
