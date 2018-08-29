float bally = (18);
int paddleX = mouseX;
int paddleY = 650;
int paddleLength = 85;
import ddf.minim.*;  
Minim minim;
AudioSample sound;

PFont word;
float ballx = random(18, width-18);
int xspeed = 12;
int yspeed = 12;
void draw() {
  background(0, 0, 0);
  fill(#FFFB83);
  stroke(#000000);
  ellipse(ballx, bally, 35, 35);
  rect(mouseX, paddleY, paddleLength, 25);
  ballx+=xspeed;
  if (ballx>width||ballx<0) {
    xspeed=-xspeed;
    sound.trigger();
  }
  bally+=yspeed;
  if (bally<0) {
    yspeed=-yspeed;
    sound.trigger();
  }
  if (bally>650) { 
    if (intersects((int) ballx, (int) bally, (int) mouseX, (int) paddleY, (int) paddleLength)) {
      sound.trigger(); 
      yspeed=-yspeed;
    } else {
      text("Game Over", 350 , 350);
      stop();
    ;
  }
  }
}



void setup() {
word = createFont("Mono" ,36);
textFont(word);

  size(900, 700);
  minim = new Minim (this);
  sound = minim.loadSample("pong.wav");
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
  if (ballY > paddleY && ballX > (paddleX-15) && ballX < paddleX + (paddleLength+15))
    return true;
  else 
  return false;
}