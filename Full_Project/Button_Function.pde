void button(color basecolour, float corner1x, float corner1y, float corner2x, float corner2y, color whenhovered, color whenpressed, String function) {
  rectMode(CORNERS);
  fill(basecolour);
  if (corner1x<mouseX && mouseX<corner2x && corner1y<mouseY && mouseY<corner2y) {
    fill(whenhovered);
  }
  if (mousePressed && corner1x<mouseX && mouseX<corner2x && corner1y<mouseY && mouseY<corner2y) {
    fill(whenpressed);
    if(function.toLowerCase().equals("background")){
      background(0);
    }
    if(function.toLowerCase().equals("dice")){
      Dice();
    }
  }
  rect(corner1x, corner1y, corner2x, corner2y);
}
void buttonimage(float cornerx, float cornery, float sizex, float sizey, String imagename) {
  PImage image = loadImage(imagename);
  image(image, cornerx, cornery, sizex, sizey);
}