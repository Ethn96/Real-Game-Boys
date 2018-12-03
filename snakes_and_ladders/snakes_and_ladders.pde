//Snakes and ladders
PImage Board;
PImage Player;
PImage Player2;
int dice2=0;
int dicebuttonx=1050;
int dicebuttony=150;
int dicebuttonsizex=250;
int dicebuttonsizey=120;
boolean piecemovement=false;
int countdown=0;
int player1x=50;
int player2x=50;
void setup() {
  size(1350, 700);
  Board=loadImage("SnLboard.jpg");
Player=loadImage("player.png");
Player2=loadImage("player2.png");
}
void draw() {
  rectMode(CORNER);
  background(0);
  fill(#FFFFFF);
  rect(1000, 0, 10, 700);
  rect(1009, 530, 400, 10);
  image(Board, 130, 0, 870, 700);
  rect(120, 0, 10, 700);
  textSize(30);
  text("2 Players Only", 1080, 35, 300, 200);
  rect(1009, 100, 400, 10);
  rect(1009, 310, 400, 10);
  button(#FFFFFF, dicebuttonx, dicebuttony, dicebuttonsizex, dicebuttonsizey, #0AFCDE);
image(Player,player1x,620,40,60);
image(Player2,player2x,620,40,60);
fill(0);
text("Roll Dice",1110,220);
fill(255); 
rect(1220, 570, 120, 120);
fill(0);
if (dice2 == 1) {
    rect(1270, 620, 20, 20);
  } else if (dice2 == 2) {
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
  } else if (dice2 == 3) {
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1270, 620, 20, 20);
  } else if (dice2 == 4) {
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1230, 660, 20, 20);
    rect(1310, 580, 20, 20);
  } else if (dice2 == 5) {
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1230, 660, 20, 20);
    rect(1310, 580, 20, 20);
    rect(1270, 620, 20, 20);
  } else if (dice2 == 6) {
    rect(1230, 580, 20, 20);
    rect(1310, 660, 20, 20);
    rect(1230, 660, 20, 20);
    rect(1310, 580, 20, 20);
    rect(1230, 620, 20, 20);
    rect(1310, 620, 20, 20);
  } 
    fill(255); 
  textSize(25); 
  text("You moved ", 1050, 630); 
  text((dice2) +" Space(s)", 1065, 660);  
if(countdown!=0){
  countdown-=5;
  player1x+=5;
}
}


int Dice() {
  int dice = int(random(6));
  return dice;
}



void mouseClicked(){
  //having it so you can't hold the button down
  if(piecemovement==false && dicebuttonx<mouseX && mouseX<(dicebuttonx+dicebuttonsizex) && dicebuttony<mouseY && mouseY<(dicebuttony+dicebuttonsizey)){
  dice2=Dice();
  dice2+=1;
  if(dice2==1){
  countdown=100;
}else if(dice2==2){
  countdown=200;
}else if(dice2==3){
  countdown=300;
}else if(dice2==4){
  countdown=400;
}else if(dice2==5){
  countdown=500;
}else if(dice2==6){
  countdown=600;
}
  piecemovement=true;
  } 
 }
void button(color basecolour, float cornerx, float cornery, float sizex, float sizey, color whenhovered) {
  fill(basecolour);
  if (cornerx<mouseX && mouseX<(cornerx+sizex) && cornery<mouseY && mouseY<(cornery+sizey)) {
    fill(whenhovered);
  }
  rectMode(CORNER);
  rect(cornerx, cornery, sizex, sizey);
}