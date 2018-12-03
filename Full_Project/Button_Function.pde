void button(color basecolour, float cornerx, float cornery, float sizex, float sizey, color whenhovered) {
  fill(basecolour);
  if (cornerx<mouseX && mouseX<(cornerx+sizex) && cornery<mouseY && mouseY<(cornery+sizey)) {
    fill(whenhovered);
  }
  rectMode(CORNER);
  rect(cornerx, cornery, sizex, sizey);
}