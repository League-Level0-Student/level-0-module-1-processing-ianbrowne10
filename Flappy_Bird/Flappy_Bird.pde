int birdX = 400;
int birdY = 400;
int birdYVelocity = 30;
int gravity = 1;
int pipeX = 600;
int pipeWidth = 100;
int lowerY = 800;
int upperY = 0;
int pipeGap = 5;
int upperPipeHeight = (int) random(100, 400);
int lowerPipeHeight = upperPipeHeight+(int) random(100, 400);
int score = 0;
void setup() {
  size(1000, 800);
  println(lowerY);
  println(upperY);
  println(pipeGap);
  println(upperPipeHeight);
  println(lowerPipeHeight);
}
void teleportPipes() {
  if (pipeX < -100) {
    pipeX=1000;
    upperPipeHeight = (int) random(100, 400);
    lowerPipeHeight = upperPipeHeight+(int) random(100, 400);
    score+=1;
  }
}
void mousePressed() {
  birdY=birdY-birdYVelocity;
}
boolean intersectsPipes() { 
  if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+pipeWidth)) {
    return true;
  } else if (birdY>lowerPipeHeight && birdX > pipeX && birdX < (pipeX+pipeWidth)) {
    return true;
  } else { 
    return false;
  }
}
void draw() {

  lowerY = upperY + upperPipeHeight + pipeGap;
  birdY=birdY+gravity;
  noStroke();
  background(#0ACCFA);
  fill(#EAE015);
  ellipse(birdX, birdY, 50, 50);
  fill(#91E810);
  rect(pipeX, 0, 100, upperPipeHeight);
  fill(#91E810);
  rect(pipeX, lowerPipeHeight, 100, 1000);
  fill(#12B707);
  rect(0, 750, 1500, 100);
    fill(#000300);
  text("Score: "+score, 10, 15);
  pipeX-=5;
  if(intersectsPipes()){
  stop();
  }
    if(birdX < 200){
     stop(); 
    }
    teleportPipes();
  
}