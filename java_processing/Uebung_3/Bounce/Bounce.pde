// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:        11.11.22
// Beschreibung: Bounce Effect, Start/Stopp, Kreis aendert seine Farbe sobald die groesse sich andert
int xPos, yPos;

int speed = 1;
int direction = 1;
int kreisgroesse = 100;
int rad = kreisgroesse/2;

boolean programmStarted = true;

enum Richtung {
  OBEN, UNTEN, RECHT, LINKS, EGAL
};
enum Farben {
  GELB, CYAN, WEISS
};

Richtung richtung = Richtung.EGAL;
Farben farbe = Farben.WEISS;

void setup() {
  size(800, 800);
  xPos = width/2;
  yPos = height/2;
}

void draw() {
  background(0);
  fill(255);
  textSize(30);
  text("(k/K) Kreisgröße " + kreisgroesse, 30, 30);
  text("Start oder Stopp mit Return: " , 30, 60);
  text("Richtung mit Cursortasten :", 30, 90);
  text("(+/-) Speed:" + speed, 30, 120);

  if (keyPressed == true && key == 'a') {
    text("(a) Bounce: ja", 30, 150);
  } else {
    text("(a) Bounce: nein", 30, 150);
  }

  //Kreis farben
  if (kreisgroesse >= 240 && kreisgroesse <= 300) {
    text("Kreisfarbe (r/0)(g/255) (b/255): Cyan", 30, 180);
  } else if (kreisgroesse >= 170 && kreisgroesse < 239) {
    text("Kreisfarbe (r/255) (g/255) (b/0): Gelb", 30, 180);
  } else {
    text("Kreisfarbe (r/255) (g/255) (b/255): Weiß", 30, 180);
  }

  //Der Kreis verschwindet an den Rand und taucht auf der andere Seite wieder auf
  if (richtung == Richtung.RECHT) {
    xPos = xPos + speed;
    if (xPos - kreisgroesse > width) {
      xPos =  -rad;
    }
    text("Richtung mit Cursortasten : recht", 30, 90);
    
  } else if (richtung == Richtung.LINKS) {
    xPos = xPos - speed;
    if (xPos + kreisgroesse < 0) {
      xPos =  width + rad;
    }
    text("Richtung mit Cursortasten : links", 30, 90);
    
  } else if (richtung == Richtung.OBEN) {
    yPos = yPos - speed;
    if (yPos + kreisgroesse < 0) {
      yPos = height + rad;
    }
    text("Richtung mit Cursortasten : oben", 30, 90);
    
  } else if (richtung == Richtung.UNTEN) {
    yPos = yPos + speed;
    if (yPos - kreisgroesse > height) {
      yPos = -rad;
    }
    text("Richtung mit Cursortasten : unten", 30, 90);
    
  } else {
  }

  if (kreisgroesse >= 170 && kreisgroesse <= 239) {
    fill(255, 255, 0);
  } else if (kreisgroesse >= 240 && kreisgroesse <= 300) {
    fill(0, 255, 255);
  } else {
    fill(255);
  }

  circle(xPos, yPos, kreisgroesse);
}

void keyPressed() {
  println("taaste " + key + " " + keyCode);
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
  case 'a':
    if (xPos + rad >= width) {
      richtung = Richtung.LINKS;
    } else if (xPos - rad <= 0) {
      richtung = Richtung.RECHT;
    } else if (yPos + rad >= height) {
      richtung = Richtung.OBEN;
    } else if (yPos - rad <= 0) {
      richtung = Richtung.UNTEN;
    }
    break;
  case 'k':
    if (kreisgroesse<=290) {
      kreisgroesse += 10;
      rad = kreisgroesse/2;
    }
    break;
  case 'K':
    if (kreisgroesse>=110) {
      kreisgroesse -= 10;
      rad = kreisgroesse/2;
    }
    break;  
  case ENTER:
    onEnterPressed();
    break;
  }
  
  switch(keyCode) {
    case RIGHT:
      richtung = Richtung.RECHT;
      break;
    case LEFT:
      richtung = Richtung.LINKS;
      break;
    case UP:
      richtung = Richtung.OBEN;
      break;
    case DOWN:
      richtung = Richtung.UNTEN;
      break;
  }
}

void onEnterPressed() {
  programmStarted = !programmStarted;
  
  if (programmStarted) {
    loop();
    fill(255);
  } else {
    noLoop();
    fill(255);
    text("Start oder Stopp mit Return: stop", 30, 60);

  }
}
