void selectdice(){
 abutton(#FFFFFF, 100, 300, 400, 400, 0);
 hbutton(#FFFFFF, 100, 500, 400, 600, 0);
}

void abutton(color abasecolour, float acorner1x,float acorner1y,float acorner2x,float acorner2y,color awhenhovered){
  fill(abasecolour);
  if(mousePressed && acorner1x<mouseX && mouseX<acorner2x && acorner1y<mouseY && mouseY<acorner2y){
    aDice();
  }
  rectMode(CORNERS);
  rect(acorner1x,acorner1y,acorner2x,acorner2y);
}

void hbutton(color hbasecolour, float hcorner1x,float hcorner1y,float hcorner2x,float hcorner2y,color hwhenhovered){
  fill(hbasecolour);
  if(mousePressed && hcorner1x<mouseX && mouseX<hcorner2x && hcorner1y<mouseY && mouseY<hcorner2y){
 background(#EAEEAA);}
   rectMode(CORNERS);
  rect(hcorner1x,hcorner1y,hcorner2x,hcorner2y);
}





void aDice() {
  background(#EAEAEE);
  rectMode(CORNER);
  int dice1 = int(random(5));
  int dice2 = int(random(5));

  rect(1220, 570, 120, 120);
  rect(1080, 570, 120, 120);

  if (dice1 == 0) {
    dice1 = 1;
    fill(0);
    rect(1130, 620, 20, 20);
  } else if (dice1 == 1) {
    dice1 = 2;
    fill(0);
    rect(1090, 580, 20, 20);
    rect(1170, 660, 20, 20);
  } else if (dice1 == 2) {
    dice1 = 3;
    fill(0);
    rect(1090, 580, 20, 20);
    rect(1130, 620, 20, 20);
    rect(1170, 660, 20, 20);
  } else if (dice1 == 3) {
    dice1 = 4;
    fill(0);
    rect(1090, 580, 20, 20);
    rect(1170, 580, 20, 20);
    rect(1170, 660, 20, 20);
    rect(1090, 660, 20, 20);
  } else if (dice1 == 4) {
    dice1 = 5;
    fill(0);
    rect(1090, 580, 20, 20);
    rect(1170, 580, 20, 20);
    rect(1170, 660, 20, 20);
    rect(1090, 660, 20, 20);
    rect(1130, 620, 20, 20);
  } else if (dice1 == 5) {
    dice1 = 6;
    fill(0);
    rect(1090, 580, 20, 20);
    rect(1170, 580, 20, 20);
    rect(1170, 660, 20, 20);
    rect(1090, 660, 20, 20);
    rect(1090, 620, 20, 20);
    rect(1170, 620, 20, 20);
  }

  if (dice2 == 0) {
    dice2 = 1;
    fill(0);
    rect(1270, 620, 20, 20);
  } else if (dice2 == 1) {
    dice2 = 2;
    fill(0);
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
  } else if (dice2 == 2) {
    dice2 = 3;
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1270, 620, 20, 20);
  } else if (dice2 == 3) {
    dice2 = 4;
    fill(0);
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1230, 660, 20, 20);
    rect(1310, 580, 20, 20);
  } else if (dice2 == 4) {
    dice2 = 5;
    fill(0);
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1230, 660, 20, 20);
    rect(1310, 580, 20, 20);
    rect(1270, 620, 20, 20);
  } else if (dice2 == 5) {
    dice2 = 6;
    fill(0);
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1230, 660, 20, 20);
    rect(1310, 580, 20, 20);
    rect(1230, 620, 20, 20);
    rect(1310, 620, 20, 20);
  }
  
  fill(255);
  text("You moved " + (dice1 + dice2) + " spaces", 200, 200);
}