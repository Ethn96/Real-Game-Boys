void Dice() {
  textSize(27);
  background(0);

  int dice1 = int(random(5));
  int dice2 = int(random(5));

  rect(1220, 570, 120, 120);
  rect(1080, 570, 120, 120);

  if (dice1 == 0) {
    fill(0);
    rect(1130, 620, 20, 20);
  } else if (dice1 == 1) {
    fill(0);
    rect(1090, 580, 20, 20);
    rect(1170, 660, 20, 20);
  } else if (dice1 == 2) {
    fill(0);
    rect(1090, 580, 20, 20);
    rect(1130, 620, 20, 20);
    rect(1170, 660, 20, 20);
  } else if (dice1 == 3) {
    fill(0);
    rect(1090, 580, 20, 20);
    rect(1170, 580, 20, 20);
    rect(1170, 660, 20, 20);
    rect(1090, 660, 20, 20);
  } else if (dice1 == 4) {
    fill(0);
    rect(1090, 580, 20, 20);
    rect(1170, 580, 20, 20);
    rect(1170, 660, 20, 20);
    rect(1090, 660, 20, 20);
    rect(1130, 620, 20, 20);
  } else if (dice1 == 5) {
    fill(0);
    rect(1090, 580, 20, 20);
    rect(1170, 580, 20, 20);
    rect(1170, 660, 20, 20);
    rect(1090, 660, 20, 20);
    rect(1090, 620, 20, 20);
    rect(1170, 620, 20, 20);
  }

  if (dice2 == 0) {
    fill(0);
    rect(1270, 620, 20, 20);
  } else if (dice2 == 1) {
    fill(0);
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
  } else if (dice2 == 2) {
    fill(0);
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1270, 620, 20, 20);
  } else if (dice2 == 3) {
    fill(0);
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1230, 660, 20, 20);
    rect(1310, 580, 20, 20);
  } else if (dice2 == 4) {
    fill(0);
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1230, 660, 20, 20);
    rect(1310, 580, 20, 20);
    rect(1270, 620, 20, 20);
  } else if (dice2 == 5) {
    fill(0);
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1230, 660, 20, 20);
    rect(1310, 580, 20, 20);
    rect(1230, 620, 20, 20);
    rect(1310, 620, 20, 20);
  }

  fill(255);
  text("You moved " + ((dice1 + 1) + (dice2 + 1)) + " spaces", 1070, 550);
  noLoop();
}