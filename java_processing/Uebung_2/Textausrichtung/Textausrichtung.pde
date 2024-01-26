// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:       03.11.22
// Beschreibung: TextAlign: Textausrichtung zum Zeichnen von Text festlegen


void setup(){
    size(1000,1000);
    background(0);
    noFill();
    stroke(100);
    rect(100,100,width - 200, height - 200, 5);
    
    fill(100);
    line(width/2, 100, width/2, 900);
    line(100, height/2, 900, height/2);
    
    textSize(30);
    
    textAlign(LEFT);
    text("Dieser Text ist linksbündig", 100, 90);
    
    textAlign(RIGHT);
    text("Dieser Text ist Rechtsbündig", 900, 90);
    
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("Dieser Text ist in der Mitte zentriert", width/2, 200);
    
    fill(255,0,0);
    textAlign(LEFT, TOP);
    textSize(20);
    text("textAlign(LEFT, TOP)", 150, height/2);
    
    fill(0,255,0);
    textAlign(LEFT, BOTTOM);
    textSize(20);
    text("textAlign(LEFT, BOTTOM)", 350, height/2);
    
    fill(0,255,255);
    textAlign(LEFT, CENTER);
    text("textAlign(LEFT, CENTER)", 600, height /2);
    
    noFill();
    stroke(255,255,0);
    rect(120, 550,760,330,5); 
    
    textSize(15);
    textAlign(LEFT);
    text("Weit hinten, hinter den Wortbergen, fern der Länder Vokalien und Konsonantien leben die Blindtexte. "
    + "Abgeschieden wohnen sie in Buchstabhausen an der Küste des Semantik, eines großen Sprachozeans. Ein"
    + "kleines Bächlein namens Duden fließt durch ihren Ort und versorgt sie mit den nötigen Regelialien. Es ist ein"
    + " paradiesmatisches Land, in dem einem gebratene Satzteile in den Mund fliegen. Nicht einmal von der"
    + " allmächtigen Interpunktion werden die Blindtexte beherrscht – ein geradezu unorthographisches Leben. Eines"
    + " Tages aber beschloß eine kleine Zeile Blindtext, ihr Name war Lorem Ipsum, hinaus zu gehen in die weite"
    + " Grammatik. Der große Oxmox riet ihr davon ab, da es dort wimmele von bösen Kommata, wilden Fragezeichen "
    + "und hinterhältigen Semikoli, doch das Blindtextchen ließ sich nicht beirren. Es packte seine sieben Versalien,"
    + " schob sich sein Initial in den Gürtel und machte sich auf den Weg. Als es die ersten Hügel des Kursivgebirges"
    + " erklommen hatte, warf es einen letzten Blick zurück auf die Skyline seiner Heimatstadt Buchstabhausen, die"
    + " Headline von Alphabetdorf und die Subline seiner eigenen Straße, der Zeilengasse. ehmütig lief ihm eine"
    + "W rhetorische Frage über die Wange, dann setzte es seinen Weg fort.", 120, 550,760,330);
    

}

void draw(){

}
