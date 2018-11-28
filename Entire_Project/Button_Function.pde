void button(color basecolour, float corner1x,float corner1y,float corner2x,float corner2y,color whenhovered){
  rectMode(CORNERS);
  fill(basecolour);
  if(corner1x<mouseX && mouseX<corner2x && corner1y<mouseY && mouseY<corner2y){
    fill(whenhovered);
  }
  rect(corner1x,corner1y,corner2x,corner2y);
}