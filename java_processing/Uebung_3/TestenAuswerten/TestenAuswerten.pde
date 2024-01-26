// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:        11.11.22
// Beschreibung: Cursor-Tasten ablesen, Quadrat aendert sein Farbe, sobald die groesse sich aendert

int speed = 1;
int kantenlange = 100;
boolean programmStarted = true;


void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  fill(255);
  textSize(30);
  textAlign(LEFT);
  text("Richtung: ", 30, 30);

  switch(keyCode) {
  case 38:
    text("Richtung: oben", 30, 30);
    break;
  case 40:
    text("Richtung: unten", 30, 30);
    break;
  case 39:
    text("Richtung: recht", 30, 30);
    break;
  case 37:
    text("Richtung: links", 30, 30);
    break;
  }

  text("Objekt", 30, 60);
  text("Geschwindigkeit: " + speed, 30, 90);
  text("Kantenlänge " + kantenlange, 30, 120);

  if (kantenlange >= 170 && kantenlange <= 239) {
    fill(255, 255, 0);
  } else if (kantenlange >= 240 && kantenlange <= 300) {
    fill(0, 255, 255);
  } else {
    fill(255);
  }

  rectMode(CENTER);
  rect(width/2, height/2, kantenlange, kantenlange);
}

void keyPressed() {
  switch(key) {
  case '+':
    if (speed<10) {
      speed++;
    }
    break;
  case '-':
    if (speed>1) {
      speed--;
    }
    break;
  case 'k':
    if (kantenlange<=290) {
      kantenlange += 10;
    }
    break;
  case 'K':
    if (kantenlange>=110) {
      kantenlange -= 10;
    }
    break;
  case ENTER:
    onEnterPressed();
    break;
  }
}

//return taste
void onEnterPressed() {
  programmStarted = !programmStarted;

  if (programmStarted) {
    loop();
    fill(255);
  } else {
    noLoop();
    fill(255);
    text("Objekt gestoppt", 30, 60);
  }
}
