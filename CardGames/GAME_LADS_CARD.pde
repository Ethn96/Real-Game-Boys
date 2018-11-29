int cardnumber;
int card; 

void setup() {
}


void draw() {
  RandomNumbers();
  CardNames();
  CheckCard();
  background(20, 150, 54);
}


void RandomNumbers() {
  card = int(random(52)); 
  //println(nf(card, 0, 0));

  noLoop();
}

void CheckCard() {
  if (card > 0 && card < 14) {
    println(card + " of Hearts");
  } else if (card > 13 && card < 27) {
    println(card + " of Diamonds");
  } else if (card > 26 && card < 40) {
    println(card + " of Spades");
  } else if (card > 39 && card < 53) {
    println(card + " of Clubs");
  }
}

void CardNames() {
  if (card == 1 || card == 14 || card == 27 || card == 40) {
    println("Ace");
  } else if (card == 2||card == 15||card == 28||card == 41) {
    println("Two");
  } else if (card == 3||card == 16||card == 29||card == 42) {
    println("Three");
  } else if (card == 4||card == 17||card == 30||card == 43) {
    println("Four");
  } else if (card == 5||card == 18||card == 31||card == 44) {
    println("Five");
  } else if (card == 6||card == 19||card == 32||card == 45) {
    println("Six");
  } else if (card == 7||card == 20||card == 33||card == 46) { //you need to return a number + face
    println("Seven");
  } else if (card == 8||card == 21||card == 34||card == 47) {
    println("Eight");
  } else if (card == 9||card == 22||card == 35||card == 48) {
    println("Nine");
  } else if (card == 10||card == 23||card == 36||card == 49) {
    println("Ten");
  } else if (card == 11||card == 24||card == 37||card == 50) {
    println("Jack");
  } else if (card == 12||card == 25||card == 38||card == 51) {
    println("Queen");
  } else if (card == 13||card == 26||card == 39||card == 52) {
    println("King");
  }
}