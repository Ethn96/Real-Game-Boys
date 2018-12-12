//Snakes and ladders


//NEED TO ADD:
//SPAM PROTECTION
//THE SNAKES
//THE LADDERS

PImage Board;
PImage Player;
PImage Player2;
int dice=0;
int dicebuttonx=1050;
int dicebuttony=150;
int dicebuttonsizex=250;
int dicebuttonsizey=120;
boolean piecemovement=false;
int x1countdown=0;
int y1countdown=0;
int x2countdown=0;
int y2countdown=0;
int player1x=50;
int player2x=50;
int player1y=620;
int player2y=620;
boolean player1turn=true;
boolean player2turn=false;
int ladderrun=0;
void setup() {
  size(1350, 700);
  //Image loading
  Board=loadImage("SnLboard.jpg");
  Player=loadImage("player.png");
  Player2=loadImage("player2.png");
}

void draw() {
  rectMode(CORNER);
  background(0);
  fill(#FFFFFF);
  //Lines for seperation of board
  rect(1000, 0, 10, 700);
  rect(1009, 530, 400, 10);
  rect(120, 0, 10, 700);
  rect(1009, 100, 400, 10);
  rect(1009, 310, 400, 10);
  rect(1220, 570, 120, 120);
  //Drawing the images
  image(Board, 130, 0, 870, 700);
  image(Player, player1x, player1y, 40, 60);
  image(Player2, player2x, player2y, 40, 60);
  //draws visuals of button
  button(#FFFFFF, dicebuttonx, dicebuttony, dicebuttonsizex, dicebuttonsizey, #0AFCDE);
  //text
  fill(#FFFFFF);
  textSize(30);
  text("2 Players Only", 1080, 35, 300, 200);
  fill(0);
  text("Roll Dice", 1110, 220);
  //draws visuals of dice
  if (dice == 1) {
    rect(1270, 620, 20, 20);
  } else if (dice == 2) {
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
  } else if (dice == 3) {
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1270, 620, 20, 20);
  } else if (dice == 4) {
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1230, 660, 20, 20);
    rect(1310, 580, 20, 20);
  } else if (dice == 5) {
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1230, 660, 20, 20);
    rect(1310, 580, 20, 20);
    rect(1270, 620, 20, 20);
  } else if (dice == 6) {
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1230, 660, 20, 20);
    rect(1310, 580, 20, 20);
    rect(1230, 620, 20, 20);
    rect(1310, 620, 20, 20);
  }
  //displays how much you move
  fill(255); 
  textSize(25); 
  text("You moved ", 1050, 630); 
  text((dice) +" Space(s)", 1065, 660);  
  //upward movement player1&2
  if (player1turn && (player1x==925 && (player1y==620 || player1y==484 || player1y==348 || player1y==212 || player1y==76)) || (player1x==160 && (player1y==552 || player1y==416 ||player1y==280 || player1y==144))) {
    if (x1countdown!=0) {
      y1countdown=68;
      if (player1x==160 && (player1y==552 || player1y==416 ||player1y==280 || player1y==144)) {
        x1countdown+=85;
      }
      if (player1x==925 && (player1y==620 || player1y==484 || player1y==348 || player1y==212 || player1y==76)) {
        x1countdown-=85;
      }
    }
    x1countdown*=-1;
  }
  if (player2turn && (player2x==925 && (player2y==620 || player2y==484 || player2y==348 || player2y==212 || player2y==76)) || (player2x==160 && (player2y==552 || player2y==416 ||player2y==280 || player2y==144))) {
    if (x2countdown!=0) {
      y2countdown=68;
      if (player2x==160 && (player2y==552 || player2y==416 ||player2y==280 || player2y==144)) {
        x2countdown+=85;
      }
      if (player2x==925 && (player2y==620 || player2y==484 || player2y==348 || player2y==212 || player2y==76)) {
        x2countdown-=85;
      }
    }
    x2countdown*=-1;
  }
  //ladders
  if (player1x==160 && player1y==620 && x1countdown==0) {
    ladderrun=120;
    player1x=330;
    player1y=416;
  }
  if (player1x==415 && player1y==620 && x1countdown==0) {
    ladderrun=120;
    player1x=670;
    player1y=552;
  }
  //actual movement
  if (y1countdown>0 && player1turn) {
    y1countdown-=4;
    player1y-=4;
  }
  if (x1countdown>0 && player1turn) {
    x1countdown-=5;
    player1x+=5;
  }
  if (x1countdown<0 && player1turn) {
    if (y1countdown==0 && (player1x==925 && (player1y==620 || player1y==484 || player1y==348 || player1y==212 || player1y==76)) || (player1x==160 && (player1y==552 || player1y==416 ||player1y==280 || player1y==144))) {
      x1countdown+=5;
      player1x-=5;
    } else {
      x1countdown+=5;
      player1x-=5;
    }
  }
  if (y2countdown>0 && player2turn) {
    y2countdown-=4;
    player2y-=4;
  }
  if (x2countdown>0 && y2countdown==0 && player2turn) {
    x2countdown-=5;
    player2x+=5;
  }
  if (x2countdown<0 && y2countdown==0 && player2turn) {
    x2countdown+=5;
    player2x-=5;
  }
  //spam protection
  if (x1countdown==0 && y1countdown==0 && x2countdown==0 && y2countdown==0) {
    piecemovement=false;
  }
  //keeps ladder function running
  if (ladderrun>0) {
    ladderrun-=1; 
    ladder();
  }
}
void mouseClicked() {
  //spam protection
  if (piecemovement==false && dicebuttonx<mouseX && mouseX<(dicebuttonx+dicebuttonsizex) && dicebuttony<mouseY && mouseY<(dicebuttony+dicebuttonsizey) && player1turn) {
    player2turn=true;
    player1turn=false;
  } else if (piecemovement==false && dicebuttonx<mouseX && mouseX<(dicebuttonx+dicebuttonsizex) && dicebuttony<mouseY && mouseY<(dicebuttony+dicebuttonsizey) && player2turn) {
    player1turn=true;
    player2turn=false;
  }
  if (player1turn && piecemovement==false && dicebuttonx<mouseX && mouseX<(dicebuttonx+dicebuttonsizex) && dicebuttony<mouseY && mouseY<(dicebuttony+dicebuttonsizey)) {
    //dice=Dice();
    dice=1;
    if (dice==1 && player1x==50) {
      x1countdown=110;
    } else if (dice==2 && player1x==50) {
      x1countdown=195;
    } else if (dice==3 && player1x==50) {
      x1countdown=280;
    } else if (dice==4 && player1x==50) {
      x1countdown=365;
    } else if (dice==5 && player1x==50) {
      x1countdown=450;
    } else if (dice==6 && player1x==50) {
      x1countdown=535;
    } else if (dice==1 && (player1y==620 || player1y==484 || player1y==348 || player1y==212 || player1y==76)) {
      x1countdown=85;
    } else if (dice==2 && (player1y==620 || player1y==484 || player1y==348 || player1y==212 || player1y==76)) {
      x1countdown=170;
    } else if (dice==3 && (player1y==620 || player1y==484 || player1y==348 || player1y==212 || player1y==76)) {
      x1countdown=255;
    } else if (dice==4 && (player1y==620 || player1y==484 || player1y==348 || player1y==212 || player1y==76)) {
      x1countdown=340;
    } else if (dice==5 && (player1y==620 || player1y==484 || player1y==348 || player1y==212 || player1y==76)) {
      x1countdown=425;
    } else if (dice==6 && (player1y==620 || player1y==484 || player1y==348 || player1y==212 || player1y==76)) {
      x1countdown=510;
    } else if (dice==1 && (player1y==552 || player1y==416 ||player1y==280 || player1y==144)) {
      x1countdown=-85;
    } else if (dice==2 && (player1y==552 || player1y==416 ||player1y==280 || player1y==144)) {
      x1countdown=-170;
    } else if (dice==3 && (player1y==552 || player1y==416 ||player1y==280 || player1y==144)) {
      x1countdown=-255;
    } else if (dice==4 && (player1y==552 || player1y==416 ||player1y==280 || player1y==144)) {
      x1countdown=-340;
    } else if (dice==5 && (player1y==552 || player1y==416 ||player1y==280 || player1y==144)) {
      x1countdown=-425;
    } else if (dice==6 && (player1y==552 || player1y==416 ||player1y==280 || player1y==144)) {
      x1countdown=-510;
    }
    ladderrun=0;
    piecemovement=true;
  }
  if (player2turn && piecemovement==false && dicebuttonx<mouseX && mouseX<(dicebuttonx+dicebuttonsizex) && dicebuttony<mouseY && mouseY<(dicebuttony+dicebuttonsizey)) {
    dice=Dice();
    if (dice==1 && player2x==50) {
      x2countdown=110;
    } else if (dice==2 && player2x==50) {
      x2countdown=195;
    } else if (dice==3 && player2x==50) {
      x2countdown=280;
    } else if (dice==4 && player2x==50) {
      x2countdown=365;
    } else if (dice==5 && player2x==50) {
      x2countdown=450;
    } else if (dice==6 && player2x==50) {
      x2countdown=535;
    } else if (dice==1 && (player2y==620 || player2y==484 || player2y==348 || player2y==212 || player2y==76)) {
      x2countdown=85;
    } else if (dice==2 && (player2y==620 || player2y==484 || player2y==348 || player2y==212 || player2y==76)) {
      x2countdown=170;
    } else if (dice==3 && (player2y==620 || player2y==484 || player2y==348 || player2y==212 || player2y==76)) {
      x2countdown=255;
    } else if (dice==4 && (player2y==620 || player2y==484 || player2y==348 || player2y==212 || player2y==76)) {
      x2countdown=340;
    } else if (dice==5 && (player2y==620 || player2y==484 || player2y==348 || player2y==212 || player2y==76)) {
      x2countdown=425;
    } else if (dice==6 && (player2y==620 || player2y==484 || player2y==348 || player2y==212 || player2y==76)) {
      x2countdown=510;
    } else if (dice==1 && (player2y==552 || player2y==416 ||player2y==280 || player2y==144)) {
      x2countdown=-85;
    } else if (dice==2 && (player2y==552 || player2y==416 ||player2y==280 || player2y==144)) {
      x2countdown=-170;
    } else if (dice==3 && (player2y==552 || player2y==416 ||player2y==280 || player2y==144)) {
      x2countdown=-255;
    } else if (dice==4 && (player2y==552 || player2y==416 ||player2y==280 || player2y==144)) {
      x2countdown=-340;
    } else if (dice==5 && (player2y==552 || player2y==416 ||player2y==280 || player2y==144)) {
      x2countdown=-425;
    } else if (dice==6 && (player2y==552 || player2y==416 ||player2y==280 || player2y==144)) {
      x2countdown=-510;
    }
    ladderrun=0;
    piecemovement=true;
  }
}
void button(color basecolour, float cornerx, float cornery, float sizex, float sizey, color whenhovered) {
  //shows the VISUALS of a button
  fill(basecolour);
  if (cornerx<mouseX && mouseX<(cornerx+sizex) && cornery<mouseY && mouseY<(cornery+sizey)) {
    fill(whenhovered);
  }
  rectMode(CORNER);
  rect(cornerx, cornery, sizex, sizey);
}
void ladder() {
  text("You Got A Ladder!", 1060, 420);
}
int Dice() {
  //randomizes for what number the dice rolls
  int dice = int(random(6));
  dice+=1;
  return dice;
}