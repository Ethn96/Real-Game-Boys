//Group Name
//Project Name

int value1;
int value2;
int dice1;
int dice2;

void setup(){
  textSize(42);
  size(1350, 700);
}


void draw(){
  background(0);
  Dice(value1, value2);
  
}

void Dice(int value1, int value2){
  value1 = int(random(6));
  value2 = int(random(6));

  rect(1220, 570, 120, 120);
  rect(1080, 570, 120, 120);
  
  if(value1 == 1){
    dice1 = 1;
  }
  else if(value1 == 2){
    dice1 = 2;
  }
  else if(value1 == 2){
    dice1 = 2;
  }
  else if(value1 == 3){
    dice1 = 3;
  }
  else if(value1 == 4){
    dice1 = 4;
  }
  else if(value1 == 5){
    dice1 = 4;
  }
  else if(value1 == 6){
    dice1 = 4;
  }
  
  if(value2 == 1){
    dice2 = 1;
  }
  else if(value2 == 2){
    dice2 = 2;
  }
  else if(value2 == 3){
    dice2 = 3;
  }
  else if(value2 == 4){
    dice2 = 4;
  }
  else if(value2 == 5){
    dice2 = 5;
  }
  else if(value2 == 6){
    dice2 = 6;
  }
  
  
  if(dice1 == 1){
    
    rect(1080, 570, 50, 50);
  }
  
  
  noLoop();
}