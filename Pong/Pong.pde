float bally = (18);
int paddleX = mouseX;
int paddleY = 650;
int paddleLength = 85;
import ddf.minim.*;  
Minim minim;
AudioSample sound;

float ballx = random(18,width-18);
int xspeed = 12;
int yspeed = 12;
void draw(){
 background(0,0,0);
  fill(#FFFB83);
stroke(#000000);
ellipse(ballx, bally, 35, 35);
rect(mouseX,650,85,25);
ballx+=xspeed;
if(ballx>width||ballx<0){
  xspeed=-xspeed;
sound.trigger();
}
bally+=yspeed;
if(bally>height||bally<0){
  yspeed=-yspeed;
sound.trigger();
}
intersects((int) ballx,(int) bally,(int) paddleX,(int) paddleY,(int) paddleLength);
}


void setup(){
  size(900,700);
 minim = new Minim (this);
sound = minim.loadSample("pong.wav");

}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
     if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
          return true;
     else 
          return false;
}