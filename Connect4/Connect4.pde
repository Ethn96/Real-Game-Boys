PImage Connect4Board;
PImage RedChip;
float redchipx = 70;
float redchipy = 50;
int redcolumn;
int chipcolor;
boolean playerTurn = true;
boolean row1occupiedred = false;
boolean row2occupiedred = false;
boolean row3occupiedred = false;
boolean row4occupiedred = false;
boolean row5occupiedred = false;
boolean row6occupiedred = false;
boolean row1occupiedyellow = false;
boolean row2occupiedyellow = false;
boolean row3occupiedyellow = false;
boolean row4occupiedyellow = false;
boolean row5occupiedyellow = false;
boolean row6occupiedyellow = false;

void setup() {
  size(1350, 700);
}

void draw() {
  PlayerTurn();
}

void Selectred() {
  if (keyPressed) {
    if (keyCode == RIGHT) {
      redchipx = redchipx + 127;
      redcolumn = redcolumn + 1;
    }
    if (keyCode == LEFT) {
      redchipx = redchipx - 127;
      redcolumn = redcolumn - 1;
    }
  }

  if (redchipx <= 70) {
    redchipx = 70;
  }
  if (redchipx >= 830) {
    redchipx = 830;
  }
  if (redcolumn < 1) {
    redcolumn = 1;
  }
  if (redcolumn > 7) {
    redcolumn = 7;
  }
}

void Dropred() {
  fill(#FF0000);
  if (keyPressed) {
    if (keyCode == DOWN) {
      if (row1occupiedred == false) {
        row1occupiedred = true;
      }
    }
  }
  if (row1occupiedred == true) {    
    ellipse(70, 650, 100, 90);
    chipcolor = 0;
  }
}

void buttonred(color basecolour, float cornerx, float cornery, float sizex, float sizey, color whenhovered, color whenpressed) {
  fill(basecolour);
  if (cornerx<mouseX && mouseX<(cornerx+sizex) && cornery<mouseY && mouseY<(cornery+sizey)) {
    fill(whenhovered);
  }
  if (mousePressed && cornerx<mouseX && mouseX<(cornerx+sizex) && cornery<mouseY && mouseY<(cornery+sizey)) {
    fill(whenpressed);
    playerTurn = false;
  }
  rectMode(CORNER);
  rect(cornerx, cornery, sizex, sizey);
}

void PlayerTurn() {
  if (playerTurn == true) {
    background(0);
    noStroke();
    chipcolor = #FF0000;
    buttonred(#1FB6FF, 1050, 100, 200, 100, #0CA5F0, #0A89C6);
    fill(255);
    textSize(30);
    text("Pass Turn", 1080, 160);
    Selectred();
    Dropred();
    fill(chipcolor);
    ellipse(redchipx, redchipy, 100, 90);
    Connect4Board = loadImage("Connect4Board.png");
    image(Connect4Board, 0, 100, 900, 600);
    text(redcolumn, 1000, 300);
  }
   if (playerTurn == false) {
    background(0);
    noStroke();
    chipcolor = #00FFFF;
    buttonred(#1FB6FF, 1050, 100, 200, 100, #0CA5F0, #0A89C6);
    fill(255);
    textSize(30);
    text("Pass Turn", 1080, 160);
    Selectred();
    Dropred();
    fill(chipcolor);
    ellipse(redchipx, redchipy, 100, 90);
    Connect4Board = loadImage("Connect4Board.png");
    image(Connect4Board, 0, 100, 900, 600);
    text(redcolumn, 1000, 300);
  }
}