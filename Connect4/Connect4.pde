PImage Connect4Board;
PImage RedChip;
float redchipx = 70;
float redchipy = 50;
int redcolumn;
int chipcolor;
boolean playerTurn = true;
boolean row1occupied = false;
boolean row2occupied = false;
boolean row3occupied = false;
boolean row4occupied = false;
boolean row5occupied = false;
boolean row6occupied = false;
boolean row12occupied = false;
boolean row22occupied = false;
boolean row32occupied = false;
boolean row42occupied = false;
boolean row52occupied = false;
boolean row62occupied = false;
boolean row13occupied = false;
boolean row23occupied = false;
boolean row33occupied = false;
boolean row43occupied = false;
boolean row53occupied = false;
boolean row63occupied = false;
boolean row14occupied = false;
boolean row24occupied = false;
boolean row34occupied = false;
boolean row44occupied = false;
boolean row54occupied = false;
boolean row64occupied = false;
boolean row15occupied = false;
boolean row25occupied = false;
boolean row35occupied = false;
boolean row45occupied = false;
boolean row55occupied = false;
boolean row65occupied = false;
boolean row16occupied = false;
boolean row26occupied = false;
boolean row36occupied = false;
boolean row46occupied = false;
boolean row56occupied = false;
boolean row66occupied = false;
boolean row17occupied = false;
boolean row27occupied = false;
boolean row37occupied = false;
boolean row47occupied = false;
boolean row57occupied = false;
boolean row67occupied = false;


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
      if (redcolumn == 1) {
        if (row1occupied == false) {
          row1occupied = true;
        }
        if (row1occupied == true) {
          row2occupied = true;
        }
        if (row2occupied == true) {
          row3occupied = true;
        }
        if (row3occupied == true) {
          row4occupied = true;
        }
        if (row4occupied == true) {
          row5occupied = true;
        }
        if (row5occupied == true) {
          row6occupied = true;
        }
      }
    }
    if (keyCode == DOWN) {
      if (redcolumn == 2) {
        if (row2occupied == false) {
          row2occupied = true;
        }
      }
    }
    if (keyCode == DOWN) {
      if (redcolumn == 3) {
        if (row3occupied == false) {
          row3occupied = true;
        }
      }
    }
    if (keyCode == DOWN) {
      if (redcolumn == 4) {
        if (row4occupied == false) {
          row4occupied = true;
        }
      }
    }
    if (keyCode == DOWN) {
      if (redcolumn == 5) {
        if (row5occupied == false) {
          row5occupied = true;
        }
      }
    }
    if (keyCode == DOWN) {
      if (redcolumn == 6) {
        if (row6occupied == false) {
          row6occupied = true;
        }
      }
    }
    if (keyCode == DOWN) {
      if (redcolumn == 7) {
        if (row17occupied == false) {
          row17occupied = true;
        }
      }
    }
  }
  if (row1occupied == true) {    
    ellipse(70, 650, 100, 90);
    chipcolor = 0;
  }
   if (row2occupied == true) {    
    ellipse(1000, 650, 100, 90);
    chipcolor = 0;
  }
   if (row3occupied == true) {    
    ellipse(70, 650, 100, 90);
    chipcolor = 0;
  }
   if (row4occupied == true) {    
    ellipse(70, 650, 100, 90);
    chipcolor = 0;
  }
   if (row5occupied == true) {    
    ellipse(70, 650, 100, 90);
    chipcolor = 0;
  }
   if (row6occupied == true) {    
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
    chipcolor = #F6FF00;
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