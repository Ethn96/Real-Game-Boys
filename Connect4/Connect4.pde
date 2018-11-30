PImage Connect4Board;
PImage RedChip;
float redchipx = 3;
float redchipy = -15;
int redcolumn;
boolean row1Occupied = false;
boolean row2Occupied = false;
boolean row3Occupied = false;
boolean row4Occupied = false;
boolean row5Occupied = false;
boolean row6Occupied = false;

void setup() {
  size(1350, 700);
}

void draw() {
  background(0);
  Select();
  Drop();
  RedChip = loadImage("RedChip.png");
  image(RedChip, redchipx, redchipy, 135, 130);
  Connect4Board = loadImage("Connect4Board.png");
  image(Connect4Board, 0, 100, 900, 600);
  text(redcolumn, 1000, 300);
}

void Select() {
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

  if (redchipx <= 3) {
    redchipx = 3;
  }
  if (redchipx >= 763) {
    redchipx = 763;
  }
  if (redcolumn < 1) {
    redcolumn = 1;
  }
  if (redcolumn > 7) {
    redcolumn = 7;
  }
}

void Drop() {
  if (keyPressed) {
    if (keyCode == DOWN) {
      
    }
  }
}