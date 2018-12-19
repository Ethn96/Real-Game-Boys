PImage MonopolyBoard;
PImage Player1;
PImage Player2;
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
boolean s1ownedplayer1;
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
int s0y = 640;
int s1y = 565;
int s2y = 500;
int s3y = 450;
int s4y = 390;
int s5y = 330;
int s6y = 280;
int s7y = 220;
int s8y = 160;
int s9y = 110;
int s10y = 30;
int player1x = s0x;
int player1y = s0y;
int player2x = s0x;
int player2y = s0y;
int space=0;
int space1=0;
int player1money = 1500;
int player2money = 1500;

void setup() {
  size(1350, 700);
  MonopolyBoard = loadImage("MonopolyBoard.jpg");
  Player1 = loadImage("Player1.png");
  Player2 = loadImage("Player2.png");
}

void draw() {
  background(#149636);
  imageMode(CORNER);
  image(MonopolyBoard, 0, 0);
  imageMode(CENTER);
  image(Player1, player1x, player1y, 40, 60);
  image(Player2, player2x, player2y, 40, 60);
  textSize(35);
  noStroke();
  button(#246EFF, dicebuttonx, dicebuttony, dicebuttonsizex, dicebuttonsizey, #1555D1);
  fill(0);
  text("Roll Dice", 1135, 490);
  fill(255);
  rect(1220, 570, 120, 120);
  rect(1080, 570, 120, 120);
  fill(0);
  textSize(30);
  text(player1money, 1200, 200);
  dice();
  if (space>=40) {
    space-=40;
    player1money+=200;
  }
  if (space==0 || space>=30) {
    player1x=s0x;
  } else if (space==1 || space==29) {
    player1x=s1x;
  } else if (space==2 || space==28) {
    player1x=s2x;
  } else if (space==3 || space==27) {
    player1x=s3x;
  } else if (space==4 || space==26) {
    player1x=s4x;
  } else if (space==5 || space==25) {
    player1x=s5x;
  } else if (space==6 || space==24) {
    player1x=s6x;
  } else if (space==7 || space==23) {
    player1x=s7x;
  } else if (space==8 || space==22) {
    player1x=s8x;
  } else if (space==9 || space==21) {
    player1x=s9x;
  } else if (space>=10 && space<=20) {
    player1x=s10x;
  }
  if (space>=0 && space<=10) {
    player1y=s0y;
  } else if (space==11 || space==39) {
    player1y=s1y;
  } else if (space==12 || space==38) {
    player1y=s2y;
  } else if (space==13 || space==37) {
    player1y=s3y;
  } else if (space==14 || space==36) {
    player1y=s4y;
  } else if (space==15 || space==35) {
    player1y=s5y;
  } else if (space==16 || space==34) {
    player1y=s6y;
  } else if (space==17 || space==33) {
    player1y=s7y;
  } else if (space==18 || space==32) {
    player1y=s8y;
  } else if (space==19 || space==31) {
    player1y=s9y;
  } else if (space>=20 || space<=30) {
    player1y=s10y;
  }

  if (space1>=40) {
    space1-=40;
    player2money+=200;
  }
  if (space1==0 || space1>=30) {
    player2x=s0x;
  } else if (space1==1 || space1==29) {
    player2x=s1x;
  } else if (space1==2 || space1==28) {
    player2x=s2x;
  } else if (space1==3 || space1==27) {
    player2x=s3x;
  } else if (space1==4 || space1==26) {
    player2x=s4x;
  } else if (space1==5 || space1==25) {
    player2x=s5x;
  } else if (space1==6 || space1==24) {
    player2x=s6x;
  } else if (space1==7 || space1==23) {
    player2x=s7x;
  } else if (space1==8 || space1==22) {
    player2x=s8x;
  } else if (space1==9 || space1==21) {
    player2x=s9x;
  } else if (space1>=10 && space1<=20) {
    player2x=s10x;
  }
  if (space1>=0 && space1<=10) {
    player2y=s0y;
  } else if (space1==11 || space1==39) {
    player2y=s1y;
  } else if (space1==12 || space1==38) {
    player2y=s2y;
  } else if (space1==13 || space1==37) {
    player2y=s3y;
  } else if (space1==14 || space1==36) {
    player2y=s4y;
  } else if (space1==15 || space1==35) {
    player2y=s5y;
  } else if (space1==16 || space1==34) {
    player2y=s6y;
  } else if (space1==17 || space1==33) {
    player2y=s7y;
  } else if (space1==18 || space1==32) {
    player2y=s8y;
  } else if (space1==19 || space1==31) {
    player2y=s9y;
  } else if (space1>=20 || space1<=30) {
    player2y=s10y;
  }
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
    player1turn = false;
    player2turn = true;
  } else if ( player2turn == true && dicebuttonx<mouseX && mouseX<(dicebuttonx+dicebuttonsizex) && dicebuttony<mouseY && mouseY<(dicebuttony+dicebuttonsizey)) {
    dice1=Dice();
    dice2=Dice();
    dice1+=1;
    dice2+=1;
    dicetotal = dice1 + dice2;

    if (dicetotal == 2) {
      space1+=2;
    }
    if (dicetotal == 3) {
      space1+=3;
    }
    if (dicetotal == 4) {
      space1+=4;
    }
    if (dicetotal == 5) {
      space1+=5;
    }
    if (dicetotal == 6) {
      space1+=6;
    }
    if (dicetotal == 7) {
      space1+=7;
    }
    if (dicetotal == 8) {
      space1+=8;
    }
    if (dicetotal == 9) {
      space1+=9;
    }
    if (dicetotal == 10) {
      space1+=10;
    }
    if (dicetotal == 11) {
      space1+=11;
    }
    if (dicetotal == 12) {
      space1+=12;
    }
    player2turn = false;
    player1turn = true;
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
  textSize(30);
  text("You moved ", 1125, 386);
  text( + dicetotal + " spaces", 1144, 413);
}