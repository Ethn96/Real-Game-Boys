int card = 0; 
int card1 = 0;
PImage cardE;
boolean CardFlipped = false;
boolean CardFlipped1 = false;



void setup() {
  size(1000, 600);
  background(#149636);
frameRate(24);

}

void draw() {

  if (card > card1) {
    text("Player one Wins!", 100, 500);
  }
  if (card1 > card) {
    text("Player two wins!", 300, 500);
  }


  if (CardFlipped == true) {
    DrawCard(RandomNumbers());
    CardFlipped = false;
  }
  if (CardFlipped1 == true) {
    DrawCard1(RandomNumbers1());
    CardFlipped1 = false;
  }
}

void mouseClicked() {
  CardFlipped = true; 
  CardFlipped1 = true;
  noStroke();
  fill(#149636);
  rect(50,450,550,100);
  fill(0);
}


float RandomNumbers1() {
  card1 = int(random(52)+1); 
  println(nf(card1, 0, 0));
  return(card1);
}

float RandomNumbers() {
  card = int(random(52)+1); 
  println(nf(card, 0, 0));
  return(card);
}




// if card > 39  then - 39, if card > 26 -26, if card > 13 -13.

void DrawCard(float card) {
  if (card == 1 ) {
    cardE   = loadImage("1.png");
  }
  if (card == 2 ) { 
    cardE  = loadImage("2.png");
  }
  if (card == 3 ) {
    cardE   = loadImage("3.png");
  }
  if (card ==  4) {
    cardE   = loadImage("4.png");
  }
  if (card ==  5) {
    cardE   = loadImage("5.png");
  }
  if (card ==  6) {
    cardE   = loadImage("6.png");
  }
  if (card ==  7) {  
    cardE = loadImage("7.png");
  }
  if (card ==  8) {  
    cardE = loadImage("8.png");
  }
  if (card ==  9) {  
    cardE = loadImage("9.png");
  }
  if (card ==  10) {
    cardE = loadImage("10.png");
  }
  if (card ==  11) {
    cardE = loadImage("11.png");
  }
  if (card ==  12) {
    cardE = loadImage("12.png");
  }
  if (card ==  13) {
    cardE = loadImage("13.png");
  }
  if (card ==  14) {
    cardE = loadImage("14.png");
  }
  if (card ==  15) {
    cardE = loadImage("15.png");
  }
  if (card ==  16) {
    cardE = loadImage("16.png");
  }
  if (card ==  17) {
    cardE = loadImage("17.png");
  }
  if (card ==  18) {
    cardE = loadImage("18.png");
  }
  if (card ==  19) {
    cardE = loadImage("19.png");
  }
  if (card ==  20) {
    cardE = loadImage("20.png");
  }
  if (card ==  21) {
    cardE = loadImage("21.png");
  }
  if (card ==  22) {
    cardE = loadImage("22.png");
  }
  if (card ==  23) {
    cardE = loadImage("23.png");
  }
  if (card ==  24) {
    cardE = loadImage("24.png");
  }
  if (card ==  25) {
    cardE = loadImage("25.png");
  }
  if (card ==  26) {
    cardE = loadImage("26.png");
  }
  if (card ==  27) {
    cardE = loadImage("27.png");
  }
  if (card ==  28) {
    cardE = loadImage("28.png");
  }
  if (card ==  29) {
    cardE = loadImage("29.png");
  }
  if (card ==  30) {
    cardE = loadImage("30.png");
  }
  if (card ==  31) {
    cardE = loadImage("31.png");
  }
  if (card ==  32) {
    cardE = loadImage("32.png");
  }
  if (card ==  33) {
    cardE = loadImage("33.png");
  }
  if (card ==  34) {
    cardE = loadImage("34.png");
  }
  if (card ==  35) {
    cardE = loadImage("35.png");
  }
  if (card ==  36) {
    cardE = loadImage("36.png");
  }
  if (card ==  37) {
    cardE = loadImage("37.png");
  }
  if (card ==  38) {
    cardE = loadImage("38.png");
  }
  if (card ==  39) {
    cardE = loadImage("39.png");
  }
  if (card ==  40) {
    cardE = loadImage("40.png");
  }
  if (card ==  41) {
    cardE = loadImage("41.png");
  }
  if (card ==  42) {
    cardE = loadImage("42.png");
  }
  if (card ==  43) {
    cardE = loadImage("43.png");
  }
  if (card ==  44) {
    cardE = loadImage("44.png");
  }
  if (card ==  45) {
    cardE = loadImage("45.png");
  }
  if (card ==  46) {
    cardE = loadImage("46.png");
  }
  if (card ==  47) {
    cardE = loadImage("47.png");
  }
  if (card ==  48) {
    cardE = loadImage("48.png");
  }
  if (card ==  49) {
    cardE = loadImage("49.png");
  }
  if (card ==  50) {
    cardE = loadImage("50.png");
  }
  if (card ==  51) {
    cardE = loadImage("51.png");
  }
  if (card ==  52) {
    cardE = loadImage("52.png");
  }

  image(cardE, 10, 2, 230.33333, 352);
}



void DrawCard1(float card1) {
  if (card1 == 1 ) {
    cardE   = loadImage("1.png");
  }
  if (card1 == 2 ) { 
    cardE  = loadImage("2.png");
  }
  if (card1 == 3 ) {
    cardE   = loadImage("3.png");
  }
  if (card1 ==  4) {
    cardE   = loadImage("4.png");
  }
  if (card1 ==  5) {
    cardE   = loadImage("5.png");
  }
  if (card1 ==  6) {
    cardE   = loadImage("6.png");
  }
  if (card1 ==  7) {  
    cardE = loadImage("7.png");
  }
  if (card1 ==  8) {  
    cardE = loadImage("8.png");
  }
  if (card1 ==  9) {  
    cardE = loadImage("9.png");
  }
  if (card1 ==  10) {
    cardE = loadImage("10.png");
  }
  if (card1 ==  11) {
    cardE = loadImage("11.png");
  }
  if (card1 ==  12) {
    cardE = loadImage("12.png");
  }
  if (card1 ==  13) {
    cardE = loadImage("13.png");
  }
  if (card1 ==  14) {
    cardE = loadImage("14.png");
  }
  if (card1 ==  15) {
    cardE = loadImage("15.png");
  }
  if (card1 ==  16) {
    cardE = loadImage("16.png");
  }
  if (card1 ==  17) {
    cardE = loadImage("17.png");
  }
  if (card1 ==  18) {
    cardE = loadImage("18.png");
  }
  if (card1 ==  19) {
    cardE = loadImage("19.png");
  }
  if (card1 ==  20) {
    cardE = loadImage("20.png");
  }
  if (card1 ==  21) {
    cardE = loadImage("21.png");
  }
  if (card1 ==  22) {
    cardE = loadImage("22.png");
  }
  if (card1 ==  23) {
    cardE = loadImage("23.png");
  }
  if (card1 ==  24) {
    cardE = loadImage("24.png");
  }
  if (card1 ==  25) {
    cardE = loadImage("25.png");
  }
  if (card1 ==  26) {
    cardE = loadImage("26.png");
  }
  if (card1 ==  27) {
    cardE = loadImage("27.png");
  }
  if (card1 ==  28) {
    cardE = loadImage("28.png");
  }
  if (card1 ==  29) {
    cardE = loadImage("29.png");
  }
  if (card1 ==  30) {
    cardE = loadImage("30.png");
  }
  if (card1 ==  31) {
    cardE = loadImage("31.png");
  }
  if (card1 ==  32) {
    cardE = loadImage("32.png");
  }
  if (card1 ==  33) {
    cardE = loadImage("33.png");
  }
  if (card1 ==  34) {
    cardE = loadImage("34.png");
  }
  if (card1 ==  35) {
    cardE = loadImage("35.png");
  }
  if (card1 ==  36) {
    cardE = loadImage("36.png");
  }
  if (card1 ==  37) {
    cardE = loadImage("37.png");
  }
  if (card1 ==  38) {
    cardE = loadImage("38.png");
  }
  if (card1 ==  39) {
    cardE = loadImage("39.png");
  }
  if (card1 ==  40) {
    cardE = loadImage("40.png");
  }
  if (card1 ==  41) {
    cardE = loadImage("41.png");
  }
  if (card1 ==  42) {
    cardE = loadImage("42.png");
  }
  if (card1 ==  43) {
    cardE = loadImage("43.png");
  }
  if (card1 ==  44) {
    cardE = loadImage("44.png");
  }
  if (card1 ==  45) {
    cardE = loadImage("45.png");
  }
  if (card1 ==  46) {
    cardE = loadImage("46.png");
  }
  if (card1 ==  47) {
    cardE = loadImage("47.png");
  }
  if (card1 ==  48) {
    cardE = loadImage("48.png");
  }
  if (card1 ==  49) {
    cardE = loadImage("49.png");
  }
  if (card1 ==  50) {
    cardE = loadImage("50.png");
  }
  if (card1 ==  51) {
    cardE = loadImage("51.png");
  }
  if (card1 ==  52) {
    cardE = loadImage("52.png");
  }

  image(cardE, 400, 2, 230.33333, 352);
}