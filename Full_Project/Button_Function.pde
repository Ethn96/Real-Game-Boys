void button(color basecolour, float cornerx, float cornery, float sizex, float sizey, color whenhovered, color whenpressed, String function) {
  fill(basecolour);
  if (cornerx<mouseX && mouseX<(cornerx+sizex) && cornery<mouseY && mouseY<(cornery+sizey)) {
    fill(whenhovered);
  }
  if (mousePressed && cornerx<mouseX && mouseX<(cornerx+sizex) && cornery<mouseY && mouseY<(cornery+sizey)) {
    if(function.toLowerCase().equals("background")){
      background(0);
    }
    if(function.toLowerCase().equals("dice")){
      Dice();
    }
    fill(whenpressed);
  }
  rectMode(CORNER);
  rect(cornerx, cornery, sizex, sizey);
}
void buttonimage(float cornerx, float cornery, float sizex, float sizey, String imagename) {
  PImage image = loadImage(imagename);
  image(image, cornerx, cornery, sizex, sizey);
}