int rainX = 10;
int rainY = 10;
int bucket = 716;
int score = 0;
void setup() {
  size(750, 750);
}

void draw() {
  if (rainY>=height) {
      checkCatch(rainX);
    rainY=10;
    rainX =  (int)random(740+10) ;

    println(mouseY);
  }


  background(0, 215, 0);
  fill(0, 250, 250);
  stroke(0, 250, 250);
  ellipse(rainX, rainY, 20, 26);
  rainY+=13;

  fill(250, 0, 0);
  stroke(250, 0, 0);
  rect( mouseX, 709, 80, 40);

  fill(0, 0, 0);
  textSize(16);
  text("Score: " + score, 20, 20);
}
void checkCatch(int rainX) {
  if (rainX > mouseX && rainX < mouseX+100)
    score++;
  else if (score > 0) 
    score--;
  println("Your score is now: " + score);
}