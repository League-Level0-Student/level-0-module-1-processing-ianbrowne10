int rainX = 10;
int rainY = 10;
void setup(){
  size(750,750);

}

void draw(){
if(rainY>=height){
  rainY=10;
rainX =  (int)random(740+10) ;
}
 

  background(0,215,0);
  fill(0, 250, 250);
stroke(0, 250, 250);
ellipse(rainX, rainY, 20, 26);
  rainY+=10.5;
fill(250,0,0);
stroke(250,0,0);
rect( mouseX , 709, 80,  40);
}