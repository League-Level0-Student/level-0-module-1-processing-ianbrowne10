int birdX = 400;
int birdY = 400;
int birdYVelocity = 30;
int gravity = 1;
int pipeX = 600;

int lowerY = 800;
int upperY = 0;
int pipeGap = 5;
int upperPipeHeight = (int) random(100,400);
int lowerPipeHeight = (int) random(100,400);
void setup(){
  size(1000, 800);
println(lowerY);
println(upperY);
println(pipeGap);
println(upperPipeHeight);
println(lowerPipeHeight);
}
void teleportPipes(){

}
void mousePressed(){
birdY=birdY-birdYVelocity; 
}
void draw(){
 lowerY = upperY + upperPipeHeight + pipeGap;
  birdY=birdY+gravity;
  noStroke();
  background(#0ACCFA);
fill(#EAE015);

ellipse(birdX,birdY,50,50);
fill(#91E810);
rect(pipeX,-200,100,upperPipeHeight);
fill(#91E810);
rect(pipeX,600,100,lowerPipeHeight);
pipeX-=5;

}