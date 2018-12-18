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
int s0x = 975;
int s1x = 870;
int s2x = 785;
int s3x = 700;
int s4x = 610;
int s5x = 530;
int s6x = 435;
int s7x = 355;
int s8x = 270;
int s9x = 180;
int s10x = 20;
int s0y = 640;//
int s1y = 650;
int s2y = 590;
int s3y = 570;
int s4y = 550;
int s5y = 530;
int s6y = 510;
int s7y = 490;
int s8y = 470;
int s9y = 120;
int s10y = 30;//
int player1x = s0x;
int player1y = s0y;
int player2x = s0x;
int player2y = s0y;
int space=0;
int xlocation;
int ylocation;

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
  if (space>=40) {
    space-=40;
  }
  if (space==0 || space>=30) {
    xlocation=s0x;
  } else if (space==1 || space==29) {
    xlocation=s1x;
  } else if (space==2 || space==28) {
    xlocation=s2x;
  } else if (space==3 || space==27) {
    xlocation=s3x;
  } else if (space==4 || space==26) {
    xlocation=s4x;
  } else if (space==5 || space==25) {
    xlocation=s5x;
  } else if (space==6 || space==24) {
    xlocation=s6x;
  } else if (space==7 || space==23) {
    xlocation=s7x;
  } else if (space==8 || space==22) {
    xlocation=s8x;
  } else if (space==9 || space==21) {
    xlocation=s9x;
  } else if (space>=10 && space<=20) {
    xlocation=s10x;
  }
  if (space>=0 && space<=10) {
    ylocation=s0y;
  } else if (space==11 || space==39) {
    ylocation=s1y;
  } else if (space==12 || space==38) {
    ylocation=s2y;
  } else if (space==13 || space==37) {
    ylocation=s3y;
  } else if (space==14 || space==36) {
    ylocation=s4y;
  } else if (space==15 || space==35) {
    ylocation=s5y;
  } else if (space==16 || space==34) {
    ylocation=s6y;
  } else if (space==17 || space==33) {
    ylocation=s7y;
  } else if (space==18 || space==32) {
    ylocation=s8y;
  } else if (space==19 || space==31) {
    ylocation=s9y;
  } else if (space>=20 || space<=30) {
    ylocation=s10y;
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