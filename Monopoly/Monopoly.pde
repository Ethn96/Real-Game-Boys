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
int space=0;
int xlocation;
int ylocation=s0;

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
  if(space>=40){
    space-=40;
  }
  if(space==0 || space>=30){
    xlocation=s0;
  }
  if(space==1 || space==29){
    xlocation=s1;
  }
  if(space==2 || space==28){
    xlocation=s2;
  }
  if(space==3 || space==27){
    xlocation=s3;
  }
  if(space==4 || space==26){
    xlocation=s4;
  }
  if(space==5 || space==25){
    xlocation=s5;
  }
  if(space==6 || space==24){
    xlocation=s6;
  }
  if(space==7 || space==23){
    xlocation=s7;
  }
  if(space==8 || space==22){
    xlocation=s8;
  }
  if(space==9 || space==21){
    xlocation=s9;
  }
  if(space>=10 && space<=20){
    xlocation=s10;
  }
  player1x=xlocation;
  player1y=ylocation;
}

void mousePressed() {
  if ( player1turn == true && dicebuttonx<mouseX && mouseX<(dicebuttonx+dicebuttonsizex) && dicebuttony<mouseY && mouseY<(dicebuttony+dicebuttonsizey)) {
    dice1=Dice();
    dice2=Dice();
    dice1+=1;
    dice2+=1;
    dicetotal = dice1 + dice2;

      if (dicetotal == 2) {
space+=2;
      }
      if (dicetotal == 3) {
space+=3;
      }
      if (dicetotal == 4) {
space+=4;
      }
      if (dicetotal == 5) {
space+=5;
      }
      if (dicetotal == 6) {
space+=6;
      }
      if (dicetotal == 7) {
space+=7;
      }
      if (dicetotal == 8) {
space+=8;
      }
      if (dicetotal == 9) {
space+=9;
      }
      if (dicetotal == 10) {
space+=10;
      }
      if (dicetotal == 11) {
space+=11;
      }
      if (dicetotal == 12) {
space+=12;
      }
    }
    //player1turn = false;
    //player2turn = true;
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