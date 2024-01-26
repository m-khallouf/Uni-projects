// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:       25.11.22
// Beschreibung: map(), mauseffekte und Bilder

PImage imgLeftBlue, imgWhellBlue, imgRightBlue, imgLeftRed, imgRightRed, imgWhellRed;
boolean rightPressed, leftPressed, wheelPressed;

void setup() {
  size(800, 800);
  
  //Bilder laden
  imgLeftBlue = loadImage("maus-links.png");
  imgWhellBlue = loadImage("maus-rad.png");
  imgRightBlue = loadImage("maus-rechts.png");

  imgRightRed = loadImage("maus-rechts-red.png");
  imgWhellRed = loadImage("maus-rad-red.png");
  imgLeftRed = loadImage ("maus-links-red.png");
}

void draw() {
  background(0);
  fill(255);
  textSize(20);
  textAlign(CENTER);
  text("ich will hier raus", width/2, height/2);

  noFill();
  stroke(255);
  rect(200, 200, 400, 400);
  textAlign(CENTER);

  image(imgLeftBlue, 10, 650, imgLeftBlue.width/4, imgLeftBlue.height/4);
  image(imgWhellBlue, 336, 650, imgWhellBlue.width/4, imgWhellBlue.height/4);
  image(imgRightBlue, 662, 650, imgRightBlue.width/4, imgRightBlue.height/4);

  fill(100);
  textSize(20);
  text("LEFT", 70, 735);
  text("WHEEL", 400, 735);
  text("RIGHT", 725, 735);

  fill(255, 0, 0);
  noStroke();
  float  xRichtung = map(mouseX, 0, width, 200, 600);
  float yRichtung = map(mouseY, 0, height, 200, 600);
  ellipse(xRichtung, yRichtung, 20, 20);

  fill(0, 255, 0);
  circle(mouseX, mouseY, 20);

  rightPressed();
  leftPressed();
  wheelPressed();
}

void mousePressed() {
  //schaltet die boolean werte auf false
  if (mouseButton == RIGHT) {
    rightPressed = true;
    leftPressed=false;
    wheelPressed = false;
  } else if (mouseButton == LEFT) {
    leftPressed = true;
    rightPressed = false;
    wheelPressed = false;
  } else if (mouseButton == CENTER) {
    wheelPressed = true;
    rightPressed = false;
    leftPressed=false;
  }
}

/**
 * Methodenname: rightPressed
 * Datum         25.11.2022
 * Autor:        Khallouf
 * <B>Beschreibung: ändert das rechte maus bild auf die rote farbe und vergroesst das rechtseck
 *
 */
void rightPressed() {
  if (rightPressed == true) {
    background(0);
    noFill();
    stroke(255);
    rect(100, 100, 600, 600);
    image(imgRightRed, 662, 650, imgRightRed.width/4, imgRightRed.height/4);
    image(imgLeftBlue, 10, 650, imgLeftBlue.width/4, imgLeftBlue.height/4);
    image(imgWhellBlue, 336, 650, imgWhellBlue.width/4, imgWhellBlue.height/4);

    textAlign(CENTER);
    fill(255);
    text("echt jetzt?", width/2, height/2);

    //kreis
    fill(255, 0, 0);
    noStroke();
    float  xRichtung = map(mouseX, 0, width, 100, 700);
    float yRichtung = map(mouseY, 0, height, 100, 700);
    ellipse(xRichtung, yRichtung, 20, 20);

    fill(0, 255, 0);
    circle(mouseX, mouseY, 20);
  }
}

/**
 * Methodenname: leftPressed
 * Datum         25.11.2022
 * Autor:        Khallouf
 * <B>Beschreibung: ändert das linke maus bild auf die rote farbe und vergroesst das rechtseck
 *
 */
void leftPressed() {
  if (leftPressed == true) {
    background(0);

    noFill();
    stroke(255);
    rect(200, 200, 400, 400);
    image(imgRightBlue, 662, 650, imgRightBlue.width/4, imgRightBlue.height/4);
    image(imgLeftRed, 10, 650, imgLeftRed.width/4, imgLeftRed.height/4);
    image(imgWhellBlue, 336, 650, imgWhellBlue.width/4, imgWhellBlue.height/4);

    textAlign(CENTER);
    fill(255);
    text("Ich will hier raus?", width/2, height/2);

    fill(255, 0, 0);
    noStroke();
    float  xRichtung = map(mouseX, 0, width, 200, 600);
    float yRichtung = map(mouseY, 0, height, 200, 600);
    ellipse(xRichtung, yRichtung, 20, 20);

    fill(0, 255, 0);
    circle(mouseX, mouseY, 20);
  }
}

/**
 * Methodenname: leftPressed
 * Datum         25.11.2022
 * Autor:        Khallouf
 * <B>Beschreibung: ändert das mittlere maus bild auf die rote farbe und vergroesst das rechtseck
 *
 */
void wheelPressed() {
  if (wheelPressed == true) {
    background(0);

    image(imgRightBlue, 662, 650, imgRightBlue.width/4, imgRightBlue.height/4);
    image(imgLeftBlue, 10, 650, imgLeftBlue.width/4, imgLeftBlue.height/4);
    image(imgWhellRed, 336, 650, imgWhellRed.width/4, imgWhellRed.height/4);

    textAlign(CENTER);
    fill(255);
    text("Warum nicht gleich so", width/2, height/2);

    fill(0, 255, 0);
    circle(mouseX, mouseY, 30);
    fill(255, 0, 0);
    circle(mouseX, mouseY, 20);
  }
}
