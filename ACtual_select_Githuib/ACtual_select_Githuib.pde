PImage[] frames = new PImage[11];
int count = 0;

PImage dungeon;
PImage logo;
PImage spacetostart;

boolean startup = false;
boolean prestartup = true;

boolean monopoly = false;
boolean snakes = false;
boolean uno = false;
boolean war = false;
boolean c4 = false;

boolean radical = false;
boolean matthew = false;

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
boolean player1turn=false;
boolean player2turn=false;
int ladderrun=0;
int snakerun=0;
boolean gameover=false;
int startgameturn=0;

int frames2 = 0;
int seconds = 0;

//The P shows processing these are pictures and not booleans

PImage monopolyP;
PImage unoP;
PImage warP;
PImage snakesP;


void setup() {
  size(1350, 700);
  monopolyP = loadImage("monopoly.png");
  unoP = loadImage("uno.png");
  warP = loadImage("war.png");
  snakesP = loadImage("snakes and ladders.png");
  Board=loadImage("SnLboard.jpg");
  Player=loadImage("player.png");
  Player2=loadImage("player2.png");
  startgameturn=int(random(2));
}

void draw() {
  //counts frames & seconds for testing
  frames2 = frames2 + 1;
  if (frames2 == 60) {
    frames2 = 0; 
    seconds = seconds + 1;
  }
  if (keyPressed && key == ' ') {
    prestartup = false; 
    startup = true;
  }

  //Runs the opening screen 
  if (prestartup == true) {
    prestartup();
  }


  //if space is pressed it loads the selectdice() function which puts the buttons on the screen for you to select games
  if (startup == true) {
    selectdice();
  }

  //The next portion of code checks to see which button was pressed and then launches the game they chose
  if (snakes == true) {
    startup = false;
    rect(0, 0, 1350, 700);
    text(frames2, 100, 100);
    rectMode(CORNER);
    background(0);


    if (gameover==false) {
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
      if (startgameturn==0) {
        text("Player 1 goes first", 1060, 420);
      }
      if (startgameturn==1) {
        text("Player 2 goes first", 1060, 420);
      }
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
      if (player1x==160 && player1y==620 && x1countdown==0 && y1countdown==0) {
        ladderrun=120;
        player1x=330;
        player1y=416;
      }
      if (player1x==415 && player1y==620 && x1countdown==0 && y1countdown==0) {
        ladderrun=120;
        player1x=670;
        player1y=552;
      }
      if (player1x==840 && player1y==620 && x1countdown==0 && y1countdown==0) {
        ladderrun=120;
        player1x=925;
        player1y=416;
      }
      if (player1x==160 && player1y==484 && x1countdown==0 && y1countdown==0) {
        ladderrun=120;
        player1x=245;
        player1y=348;
      }
      if (player1x==755 && player1y==484 && x1countdown==0 && y1countdown==0) {
        ladderrun=120;
        player1x=415;
        player1y=76;
      }
      if (player1x==925 && player1y==280 && x1countdown==0 && y1countdown==0) {
        ladderrun=120;
        player1x=670;
        player1y=212;
      }
      if (player1x==925 && player1y==144 && x1countdown==0 && y1countdown==0) {
        ladderrun=120;
        player1y=8;
      }
      if (player1x==160 && player1y==144 && x1countdown==0 && y1countdown==0) {
        ladderrun=120;
        player1y=8;
      }
      if (player2x==160 && player2y==620 && x2countdown==0 && y2countdown==0) {
        ladderrun=120;
        player2x=330;
        player2y=416;
      }
      if (player2x==415 && player2y==620 && x2countdown==0 && y2countdown==0) {
        ladderrun=120;
        player2x=670;
        player2y=552;
      }
      if (player2x==840 && player2y==620 && x2countdown==0 && y2countdown==0) {
        ladderrun=120;
        player2x=925;
        player2y=416;
      }
      if (player2x==160 && player2y==484 && x2countdown==0 && y2countdown==0) {
        ladderrun=120;
        player2x=245;
        player2y=348;
      }
      if (player2x==755 && player2y==484 && x2countdown==0 && y2countdown==0) {
        ladderrun=120;
        player2x=415;
        player2y=76;
      }
      if (player2x==925 && player2y==280 && x2countdown==0 && y2countdown==0) {
        ladderrun=120;
        player2x=670;
        player2y=212;
      }
      if (player2x==925 && player2y==144 && x2countdown==0 && y2countdown==0) {
        ladderrun=120;
        player2y=8;
      }
      if (player2x==160 && player2y==144 && x2countdown==0 && y2countdown==0) {
        ladderrun=120;
        player2y=8;
      }
      //snakes
      if (player1x==415 && player1y==552 && x1countdown==0 && y1countdown==0) {
        snakerun=120;
        player1x=670;
        player1y=620;
      }
      if (player1x==670 && player1y==280 && x1countdown==0 && y1countdown==0) {
        snakerun=120;
        player1y=416;
      }
      if (player1x==245 && player1y==212 && x1countdown==0 && y1countdown==0) {
        snakerun=120;
        player1y=552;
      }
      if (player1x==415 && player1y==212 && x1countdown==0 && y1countdown==0) {
        snakerun=120;
        player1x=160;
        player1y=280;
      }
      if (player1x==670 && player1y==76 && x1countdown==0 && y1countdown==0) {
        snakerun=120;
        player1x=415;
        player1y=484;
      }
      if (player1x==755 && player1y==8 && x1countdown==0 && y1countdown==0) {
        snakerun=120;
        player1y=144;
      }
      if (player1x==585 && player1y==8 && x1countdown==0 && y1countdown==0) {
        snakerun=120;
        player1y=144;
      }
      if (player1x==330 && player1y==8 && x1countdown==0 && y1countdown==0) {
        snakerun=120;
        player1x=245;
        player1y=144;
      }
      if (player2x==415 && player2y==552 && x2countdown==0 && y2countdown==0) {
        snakerun=120;
        player2x=670;
        player2y=620;
      }
      if (player2x==670 && player2y==280 && x2countdown==0 && y2countdown==0) {
        snakerun=120;
        player2y=416;
      }
      if (player2x==245 && player2y==212 && x2countdown==0 && y2countdown==0) {
        snakerun=120;
        player2y=552;
      }
      if (player2x==415 && player2y==212 && x2countdown==0 && y2countdown==0) {
        snakerun=120;
        player2x=160;
        player2y=280;
      }
      if (player2x==670 && player2y==76 && x2countdown==0 && y2countdown==0) {
        snakerun=120;
        player2x=415;
        player2y=484;
      }
      if (player2x==755 && player2y==8 && x2countdown==0 && y2countdown==0) {
        snakerun=120;
        player2y=144;
      }
      if (player2x==585 && player2y==8 && x2countdown==0 && y2countdown==0) {
        snakerun=120;
        player2y=144;
      }
      if (player2x==330 && player2y==8 && x2countdown==0 && y2countdown==0) {
        snakerun=120;
        player2x=245;
        player2y=144;
      }
      //actual movement
      if (y1countdown>0 && player1turn) {
        y1countdown-=4;
        player1y-=4;
      }
      if (x1countdown>0 && y1countdown==0 && player1turn) {
        x1countdown-=5;
        player1x+=5;
      }
      if (x1countdown<0  && y1countdown==0 && player1turn) {
        x1countdown+=5;
        player1x-=5;
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
      if (snakerun>0) {
        snakerun-=1; 
        snake();
      }
    }
    //end game
    if (player1x==160 && player1y==8) {
      x1countdown*=-1;
      if (x1countdown==0) {
        fill(#4BFFFA);
        textSize(120);
        text("PLAYER 1 WINS", 200, 300);
        gameover=true;

        button(0, 500, 350, 300, 150, 255, 90, "start game restart game");
        textSize(24);
        fill(#12FFED);
        text("Click Here to Restart", 530, 430);
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      }
    }
    if (player2x==160 && player2y==8) {
      x2countdown*=-1;
      if (x2countdown==0) {
        fill(#4BFFFA);
        textSize(120);

        text("PLAYER 2 WINS", 200, 300);
        gameover=true;
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        textSize(24);
        button(0, 500, 350, 300, 150, 255, 90, "start game restart game"); 
        fill(#12FFED);
        text("Click Here to Restart", 530, 430);
      }
    }


    button(#FC0307, -2, -2, 100, 50, 255, 90, "start game restart game");
    fill(255);
    textSize(24);
    text("Quit", 20, 30);
    if (player1turn == true) {
      text("Player 2's turn next", 1060, 470);
    }
    if (player2turn == true) {
      text("Player 1's turn next", 1060, 470);
    }
  }


  if (monopoly == true) {
    startup = false;
    clear();

    button(#FC0307, -2, -2, 100, 50, 255, 90, "start game restart game");
    fill(255);
    textSize(24);
    text("Quit", 20, 30);
  }


  if (war == true) {
    startup = false;
    clear();
    fill(0);
    rect(0, 0, 1350, 700); 

    fill(255);
    text(frames2, 100, 100);
    text(seconds, 100, 200);
    text(second(), 100, 250);
    button(#FC0307, -2, -2, 100, 50, 255, 90, "start game restart game");
    fill(255);
    textSize(24);
    text("Quit", 20, 30);
  }


  if (uno == true) {
    startup = false;
    clear();
    rect(0, 0, 1350, 700);
  }


  if (radical == true) {
    startup = false;
    clear();
    rect(0, 0, 1350, 700);

    radical();
    fill(255);
    text(frames2, 0, 0);

    button(#FC0307, -2, -2, 100, 50, 255, 90, "start game restart game");
    fill(255);
    textSize(24);
    text("Quit", 20, 30);
  }


  if (matthew == true) {
    startup = false;
    clear();

    //This was the first project I did this year.
    gamesonphone();

    button(#FC0307, -2, -2, 100, 50, 255, 90, "start game restart game");
    fill(255);
    textSize(24);
    text("Quit", 20, 30);
  }

  //                                                                                          _/
}





void selectdice() {
  //background(0);
  //fill(255);
  text(frames2, 50, 60);
  dungeon = loadImage("dungeon.jpg");
  image(dungeon, 0, 0);
  logo =loadImage("logo.png");

  // PImage connect4;

  //945
  //1st number is the colour of the button. numbers 2 - 5 dictate the location & size of the button. 
  //number 6 is the colour of the button when hovered over, and number 7 is the colour when clicked. the text dictates which  game is started

  button(0, 300, 300, 300, 150, 255, 90, "start game snakes");
  button(0, 520, 500, 300, 150, 255, 90, "start game monopoly");
  //Hidden gif and hidden hidden buttonvvv
  button(0, 630, 175, 70, 70, 255, 90, "start game radical");
  //button(0, 750, 500, 300, 150, 255,90,"start game uno");
  button(0, 750, 300, 300, 150, 255, 90, "start game war");
  fill(0);
  textSize(25);
  fill(255);
  text("WARNING: Rules of the games may not align exactly with the official rules of the games", 145, 484);
  textSize(10);

  text("Alpha", 657, 650);
  image(monopolyP, 520, 500);
  //image(unoP,750,500);
  image(warP, 750, 300);
  image(snakesP, 300, 300);
  image(logo, 525, 75 );

  //CLOCK AND DAY
  textSize(24);
  strokeWeight(4);
  fill(255);
  text(hour() + ":" + minute() + ":" + second(), 0, 100);
  text(day() + "/" +  month() + "/" + year(), 0, 125);
  fill(0);
  textSize(10);
}

//the void button lets you place buttons and click on them, it is very long.
void button(color basecolour, float cornerx, float cornery, float sizex, float sizey, color whenhovered, color whenpressed, String function) {
  fill(basecolour);
  if (cornerx<mouseX && mouseX<(cornerx+sizex) && cornery<mouseY && mouseY<(cornery+sizey)) {
    fill(whenhovered);
  }
  if (mousePressed && cornerx<mouseX && mouseX<(cornerx+sizex) && cornery<mouseY && mouseY<(cornery+sizey)) {
    if (function.toLowerCase().equals("background")) {
      background(0);
    }
    if (function.toLowerCase().equals("dice")) {
    }
    if (function.toLowerCase().equals("start game monopoly")) {
      monopoly=true;
      startup=false;
    }
    if (function.toLowerCase().equals("start game snakes")) {
      snakes=true;
      startup=false;
      player1x=50;
      player2x=50;
      player1y=620;
      player2y=620;
      x1countdown=0; 
      y1countdown=0;
      x2countdown=0;
      y2countdown=0;
      dice=0;
      ladderrun=0;
      snakerun=0;
      player1turn=false;
      player2turn=false;
      startgameturn=int(random(2));
      if (startgameturn==0) {
        player2turn=true;
      }
      if (startgameturn==1) {
        player1turn=true;
      }
    }

    if (function.toLowerCase().equals("start game war")) {
      war=true;
      startup=false;
    }
    if (function.toLowerCase().equals("start game radical")) {
      radical=true;
      startup=false;
    }
    if (function.toLowerCase().equals("start game matthew")) {
      matthew=true;
      startup=false;
    }
    if (function.toLowerCase().equals("start game restart game")) {
      startup = true;
      snakes = false;
      monopoly = false;
      war = false;
      matthew = false;
      radical = false;

      prestartup();
    }

    fill(whenpressed);
  }
  rectMode(CORNER);
  rect(cornerx, cornery, sizex, sizey);
}





void prestartup() {
  spacetostart = loadImage("press space to start.png");
  background(0);
  image(spacetostart, 0, 0);
}

//this is the gif 
void radical() {
  frames[0] = loadImage("f0.gif");
  frames[1] = loadImage("f1.gif");
  frames[2] = loadImage("f2.gif");
  frames[3] = loadImage("f3.gif");
  frames[4] = loadImage("f4.gif");
  frames[5] = loadImage("f5.gif");
  frames[6] = loadImage("f6.gif");
  frames[7] = loadImage("f7.gif");
  frames[8] = loadImage("f8.gif");
  frames[9] = loadImage("f9.gif");
  frames[10] = loadImage("f10.gif");
  clear();
  image(frames[count], 0, 100);
  count+=1;
  if (count > 10) {
    count =0;
  }

  //Hidden button don't tell anyone.

  button(0, 750, 300, 300, 150, 255, 90, "start game matthew");
}

void gamesonphone() {
  background(#A8AAAA); 
  textFont(createFont("Comic Sans MS", 24));
  fill(0, 0, 0);
  text("you got games", 0, 65);
  text("on your phone?", 0, 85);
  text("patent pending", 450, 40);
  fill(#02D0F2);
  stroke(#000000);
  strokeWeight(10);
  rect(175, 125, 200, 300);
  strokeWeight(0);
  rect(75, 125, 100, 300);
  rect(375, 125, 100, 300);
  fill(#FFF279);
  rect(375, 225, 100, 200);
  rect(75, 225, 100, 200);
  rect(183, 0, 186, 130);
  fill(#004AFF);
  rect(175, 425, 100, 220); 
  rect(275, 425, 100, 220);
  fill(#525252);
  rect(275, 645, 100, 30);
  rect(175, 645, 100, 30);
  fill(#004AA7);
  rect(230, 20, 26, 26);
  fill(#FFFFFF);
  rect(330, 20, 26, 26);
  fill(#FFFFFF);
  rect(204, 20, 26, 26);
  fill(#004AA7);
  rect(304, 20, 26, 26);
  fill(#9B4600);
  rect(252, 46, 52, 26);
  fill(#DB6300);
  rect(226, 72, 26, 52);
  rect(304, 72, 26, 52);
  rect(252, 98, 52, 26);
  rect(183, 0, 186, 6);
  fill(#6F4400);
  rect(475, 375, 100, 20);
  fill(#08FAE8);
  rect(575, 325, 20, 130);
}

void mouseClicked() {
  //spam protection
  if (piecemovement==false && gameover==false && dicebuttonx<mouseX && mouseX<(dicebuttonx+dicebuttonsizex) && dicebuttony<mouseY && mouseY<(dicebuttony+dicebuttonsizey) && player1turn) {
    player2turn=true;
    player1turn=false;
  } else if (piecemovement==false && gameover==false && dicebuttonx<mouseX && mouseX<(dicebuttonx+dicebuttonsizex) && dicebuttony<mouseY && mouseY<(dicebuttony+dicebuttonsizey) && player2turn) {
    player1turn=true;
    player2turn=false;
  }
  if (player1turn && piecemovement==false && gameover==false && dicebuttonx<mouseX && mouseX<(dicebuttonx+dicebuttonsizex) && dicebuttony<mouseY && mouseY<(dicebuttony+dicebuttonsizey)) {
    dice=Dice();
    //dice=1;
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
    } else if (dice==1 && (player1y==552 || player1y==416 ||player1y==280 || player1y==144 || player1y==8)) {
      x1countdown=-85;
    } else if (dice==2 && (player1y==552 || player1y==416 ||player1y==280 || player1y==144 || player1y==8)) {
      x1countdown=-170;
    } else if (dice==3 && (player1y==552 || player1y==416 ||player1y==280 || player1y==144 || player1y==8)) {
      x1countdown=-255;
    } else if (dice==4 && (player1y==552 || player1y==416 ||player1y==280 || player1y==144 || player1y==8)) {
      x1countdown=-340;
    } else if (dice==5 && (player1y==552 || player1y==416 ||player1y==280 || player1y==144 || player1y==8)) {
      x1countdown=-425;
    } else if (dice==6 && (player1y==552 || player1y==416 ||player1y==280 || player1y==144 || player1y==8)) {
      x1countdown=-510;
    }
    ladderrun=0;
    snakerun=0;
    piecemovement=true;
    startgameturn=-1;
  }
  if (player2turn && piecemovement==false && gameover==false && dicebuttonx<mouseX && mouseX<(dicebuttonx+dicebuttonsizex) && dicebuttony<mouseY && mouseY<(dicebuttony+dicebuttonsizey)) {
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
    } else if (dice==1 && (player2y==552 || player2y==416 ||player2y==280 || player2y==144 || player2y==8)) {
      x2countdown=-85;
    } else if (dice==2 && (player2y==552 || player2y==416 ||player2y==280 || player2y==144 || player2y==8)) {
      x2countdown=-170;
    } else if (dice==3 && (player2y==552 || player2y==416 ||player2y==280 || player2y==144 || player2y==8)) {
      x2countdown=-255;
    } else if (dice==4 && (player2y==552 || player2y==416 ||player2y==280 || player2y==144 || player2y==8)) {
      x2countdown=-340;
    } else if (dice==5 && (player2y==552 || player2y==416 ||player2y==280 || player2y==144 || player2y==8)) {
      x2countdown=-425;
    } else if (dice==6 && (player2y==552 || player2y==416 ||player2y==280 || player2y==144 || player2y==8)) {
      x2countdown=-510;
    }
    ladderrun=0;
    snakerun=0;
    piecemovement=true;
    startgameturn=-1;
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
void snake() {
  text("You Got Snaked :(", 1060, 420);
}
int Dice() {
  //randomizes for what number the dice rolls
  int dice = int(random(6));
  dice+=1;
  return dice;
}