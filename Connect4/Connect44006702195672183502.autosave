
PImage Connect4Board;
PImage RedChip;
float redchipx = 3;
float redchipy = -15;

void setup() {
  size(1350, 700);
}

void draw() {
  background(0);
  Select();
  RedChip = loadImage("RedChip.png");
  image(RedChip, redchipx, redchipy, 135, 130);
  Connect4Board = loadImage("Connect4Board.png");
  image(Connect4Board, 0, 100, 900, 600);
}

void Select() {
  if (keyPressed) {
    if (keyCode == RIGHT) {
      redchipx = redchipx + 127;
    }
    if (keyCode == LEFT) {
      redchipx = redchipx - 127;
    }
  }
  
  if (redchipx <= 3){
    redchipx = 3;
  }
  if (redchipx >= 763){
    redchipx = 763;
  }
}