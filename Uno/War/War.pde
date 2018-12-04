int card; 
PImage cardE;
boolean CardFlipped = true;


void setup() {
  size(1000, 600);
  background(20, 150, 54);
}


void draw() {
  if (CardFlipped = true) {
DrawCard(RandomNumbers());
    CardFlipped = false;
  }
}


float RandomNumbers() {
  card = int(random(52)+1); 
  println(nf(card, 0, 0));
  return(card);
}



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