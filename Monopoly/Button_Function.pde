void button(color basecolour, float dicebuttonx, float dicebuttony, float dicebuttonsizex, float dicebuttonsizey, color whenhovered) {
  fill(basecolour);
  if (dicebuttonx<mouseX && mouseX<(dicebuttonx+dicebuttonsizex) && dicebuttony<mouseY && mouseY<(dicebuttony+dicebuttonsizey)) {
    fill(whenhovered);
    Dice();
  }
  rectMode(CORNER);
  rect(dicebuttonx, dicebuttony, dicebuttonsizex, dicebuttonsizey);
}

void buybutton(color basecolour, float dicebuttonx, float dicebuttony, float dicebuttonsizex, float dicebuttonsizey, color whenhovered) {
  fill(basecolour);
  if (dicebuttonx<mouseX && mouseX<(dicebuttonx+dicebuttonsizex) && dicebuttony<mouseY && mouseY<(dicebuttony+dicebuttonsizey) && space == 1 && player1turn == true) {
    fill(whenhovered);
    space1ownedplayer1 = true;
    player1money-=200;
  }
  rectMode(CORNER);
  rect(dicebuttonx, dicebuttony, dicebuttonsizex, dicebuttonsizey);
}