// Autor:       Mohamad Khallouf
// Matrikelnr.: 36794
// Datum:       17.11.22
// Beschreibung: automatischer Wortlauf

boolean nextWord, lastWord, sentence;
int index;
String[] words = {"Die", "Wurzeln", "der", "Bildung", "sind", "bitter", "aber", "ihre", "Früchte", "sind", "süß"};

void setup() {
  size(400, 400);
  frameRate(2);
}

void draw() {
  background(0);
  surface.setLocation((displayWidth - width)/2, (displayHeight - height)/2);
  textSize(25);
  fill(255);

  if (nextWord == true) {
    keyPressed();
  } else if (lastWord == true) {
    keyPressed();
  } else if (sentence == true) {
    keyPressed();
  }
}

void keyPressed() {
  if (key == 'v') nextWord = true;
  if (key == 'r') lastWord = true;
  if (key == 'k') sentence = true;
  textSize(60);
  textAlign(CENTER);
  switch(key) {
  case 'v':
    if (index < 1) {
      text("Die", width/2, height/2);
      index++;
    } else if (index < 2) {
      text("Wurzeln", width/2, height/2);
      index++;
    } else if (index < 3) {
      text("der", width/2, height/2);
      index++;
    } else if (index < 4) {
      text("Bildung", width/2, height/2);
      index++;
    } else if (index < 5) {
      text("sind", width/2, height/2);
      index++;
    } else if (index < 6) {
      text("bitter", width/2, height/2);
      index++;
    } else if (index < 7) {
      text("aber", width/2, height/2);
      index++;
    } else if (index < 8) {
      text("ihre", width/2, height/2);
      index++;
    } else if (index < 9) {
      text("Früchte", width/2, height/2);
      index++;
    } else if (index < 10) {
      text("sind", width/2, height/2);
      index++;
    } else if (index < 11) {
      text("süß", width/2, height/2);
      index++;
    } else {
      index = 0;
    }
    break;
  case 'r':
    if (index > 10) {
      text(words[10], width/2, height/2);
      index--;
    } else if (index > 9) {
      text(words[9], width/2, height/2);
      index--;
    } else if (index > 8) {
      text(words[8], width/2, height/2);
      index--;
    } else if (index > 7) {
      text(words[7], width/2, height/2);
      index--;
    } else if (index > 6) {
      text(words[6], width/2, height/2);
      index--;
    } else if (index > 5) {
      text(words[5], width/2, height/2);
      index--;
    } else if (index > 4) {
      text(words[4], width/2, height/2);
      index--;
    } else if (index > 3) {
      text(words[3], width/2, height/2);
      index--;
    } else if (index > 2) {
      text(words[2], width/2, height/2);
      index--;
    } else if (index > 1) {
      text(words[1], width/2, height/2);
      index--;
    } else if (index > 0) {
      text(words[0], width/2, height/2);
      index--;
      break;
    } else {
      index = 11;
    }
    break;
  case 'k':
    textAlign(CENTER);
    textSize(25);
    text("Die Wurzeln der Bildung sind bitter,\n aber ihre Früchte sind süß\n- Aristoteles -", width/2, 150);
    break;
  }
}

//Programm beenden mit einem beliebigen Maustaste
void mousePressed() {
  exit();
}
