PImage MonopolyBoard;
int dice1 = 0;
int dice2=0;
int dicebuttonx=1100;
int dicebuttony=400;
int dicebuttonsizex=200;
int dicebuttonsizey=100;

void setup() {
  size(1350, 700);
  MonopolyBoard = loadImage("MonopolyBoard.png");
}

void draw() {
  background(#149636);
  image(MonopolyBoard, -305, -5, 1500, 708);
  textSize(35);
  noStroke();
  button(#246EFF, dicebuttonx, dicebuttony, dicebuttonsizex, dicebuttonsizey, #1555D1);
  fill(0);
  text("Roll Dice", 1125, 460);
  fill(255);
  rect(1220, 570, 120, 120);
  rect(1080, 570, 120, 120);
  fill(0);
  if (dice1 == 1) {
    rect(1130, 620, 20, 20);
  } else if (dice1 == 2) {
    rect(1090, 580, 20, 20);
    rect(1170, 660, 20, 20);
  } else if (dice1 == 3) {
    rect(1090, 580, 20, 20);
    rect(1130, 620, 20, 20);
    rect(1170, 660, 20, 20);
  } else if (dice1 == 4) {
    rect(1090, 580, 20, 20);
    rect(1170, 580, 20, 20);
    rect(1170, 660, 20, 20);
    rect(1090, 660, 20, 20);
  } else if (dice1 == 5) {
    rect(1090, 580, 20, 20);
    rect(1170, 580, 20, 20);
    rect(1170, 660, 20, 20);
    rect(1090, 660, 20, 20);
    rect(1130, 620, 20, 20);
  } else if (dice1 == 6) {
    rect(1090, 580, 20, 20);
    rect(1170, 580, 20, 20);
    rect(1170, 660, 20, 20);
    rect(1090, 660, 20, 20);
    rect(1090, 620, 20, 20);
    rect(1170, 620, 20, 20);
  }
  if (dice2 == 1) {
    rect(1270, 620, 20, 20);
  } else if (dice2 == 2) {
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
  } else if (dice2 == 3) {
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1270, 620, 20, 20);
  } else if (dice2 == 4) {
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1230, 660, 20, 20);
    rect(1310, 580, 20, 20);
  } else if (dice2 == 5) {
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1230, 660, 20, 20);
    rect(1310, 580, 20, 20);
    rect(1270, 620, 20, 20);
  } else if (dice2 == 6) {
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1230, 660, 20, 20);
    rect(1310, 580, 20, 20);
    rect(1230, 620, 20, 20);
    rect(1310, 620, 20, 20);
  } 
  text("You moved ", 1110, 280);
  text( + (dice1 + dice2) + " spaces", 1130, 318);
}

void mousePressed() {
  if (dicebuttonx<mouseX && mouseX<(dicebuttonx+dicebuttonsizex) && dicebuttony<mouseY && mouseY<(dicebuttony+dicebuttonsizey)) {
    dice1=Dice();
    dice2=Dice();
    dice1+=1;
    dice2+=1;
  }
}