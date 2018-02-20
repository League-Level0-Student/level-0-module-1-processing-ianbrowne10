int speed2 = 1;
int speed1 = 1;
int x1 = 200;
int x2 = 800;
void setup() {
  size(1000, 1000);
  noFill();
}
void draw() {
  background(100,100,100);
  //noStroke();
  for (int i = 20; i>0; i--) {
    ellipse(x1, 500, i *17, i *17);
  }
  for (int o = 20; o>0; o--) {
    ellipse(x2, 500, o *17, o *17);
  }
  x1+=speed1;
  x2-=speed2;
if(x1>800){
  speed1=-speed1;
}
if(x2<200){
  speed2=-speed2;
}
if(x1<200){
  speed1=-speed1;
}
if(x2>800){
  speed2=-speed2;
}
}