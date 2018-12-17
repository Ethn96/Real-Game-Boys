PImage MonopolyBoard;
PImage Player1;
int dice1 = 0;
int dice2 = 0;
int dicetotal;
int dicebuttonx=1110;
int dicebuttony=430;
int dicebuttonsizex=200;
int dicebuttonsizey=100;
boolean player1turn=true;
boolean player2turn=false;
boolean piecemovement=false;
int s0 = 975;
int s1 = 870;
int s2 = 785;
int s3 = 700;
int s4 = 610;
int s5 = 530;
int s6 = 435;
int s7 = 355;
int s8 = 270;
int s9 = 180;
int s10 = 20;
int s11;
int s12;
int s13;
int s14;
int s15;
int s16;
int s17;
int s18;
int s19;
int s20;
int s21;
int s22;
int s23;
int s24;
int s25;
int s26;
int s27;
int s28;
int s29;
int s30;
int s31;
int s32;
int s33;
int s34;
int s35;
int s36;
int s37;
int s38;
int s39;
int s40;
int player1x = s0;
int player1y = 640;
int player2x = s0;
int player2y = 640;


void setup() {
  size(1350, 700);
  MonopolyBoard = loadImage("MonopolyBoard.jpg");
  Player1 = loadImage("Player1.png");
}

void draw() {
  background(#149636);
  imageMode(CORNER);
  image(MonopolyBoard, 0, 0);
  imageMode(CENTER);
  image(Player1, player1x, player1y, 40, 60);
  textSize(35);
  noStroke();
  button(#246EFF, dicebuttonx, dicebuttony, dicebuttonsizex, dicebuttonsizey, #1555D1);
  fill(0);
  text("Roll Dice", 1135, 490);
  fill(255);
  rect(1220, 570, 120, 120);
  rect(1080, 570, 120, 120);
  fill(0);
  dice();
}

void mousePressed() {
  if ( player1turn == true && dicebuttonx<mouseX && mouseX<(dicebuttonx+dicebuttonsizex) && dicebuttony<mouseY && mouseY<(dicebuttony+dicebuttonsizey)) {
    dice1=Dice();
    dice2=Dice();
    dice1+=1;
    dice2+=1;
    dicetotal = dice1 + dice2;

    if (player1x >= 975) {
      if (dicetotal == 2) {

      }
      if (dicetotal == 3) {

      }
      if (dicetotal == 4) {

      }
      if (dicetotal == 5) {

      }
      if (dicetotal == 6) {

      }
      if (dicetotal == 7) {

      }
      if (dicetotal == 8) {

      }
      if (dicetotal == 9) {

      }
      if (dicetotal == 10) {

      }
      if (dicetotal == 11) {

      }
      if (dicetotal == 12) {

      }
    }
    player1turn = false;
    player2turn = true;
  }
}

void dice() {
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
  text( + dicetotal + " spaces", 1130, 318);
}