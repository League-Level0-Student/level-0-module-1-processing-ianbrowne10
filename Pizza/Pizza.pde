PImage baseball;
void setup () {
size(1000, 1000);
 baseball=loadImage("baseball.ppm.gif");
 
 noStroke();



}
void draw (){
fill(#FFE2A2);
ellipse(500,500,645,645);
fill(#E81515);
  ellipse(500,500,600,600);
  fill(#F9FA0D);
  ellipse(500,500,575,575);
image(baseball, 500,500);
image(baseball, 432, 678);
image(baseball, 578, 265);
image(baseball, 257, 476);

}