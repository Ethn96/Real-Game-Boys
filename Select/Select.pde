//Select

void setup(){
  size(1350,700);

}

void draw(){
  
 selectscreen();
}

void selectscreen(){
 button(#FFFFFF, 100, 300, 400, 400, 0);

}

void button(color basecolour, float corner1x,float corner1y,float corner2x,float corner2y,color whenhovered){
  fill(basecolour);
  if(mousePressed && corner1x<mouseX && mouseX<corner2x && corner1y<mouseY && mouseY<corner2y){
    Dice();
  }
  rectMode(CORNERS);
  rect(corner1x,corner1y,corner2x,corner2y);
}





void Dice() {
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