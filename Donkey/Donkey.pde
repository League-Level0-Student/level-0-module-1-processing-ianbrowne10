PImage donkey;
PImage tail;
int minX=1110;
int minY=265;
int maxX=1138;
int maxY=289;
int tailY=0;
int tailX=0;
void setup(){
 donkey = loadImage("download.jpg");      //change the file name if you need to
tail = loadImage("tail.png");      //change the file name if you need to 
  size(1300,1000);
donkey.resize(1300,1000);
  tail.resize(230,230);
  
}

void draw(){
background (0,0,0);
image(tail, mouseX, mouseY);
rect(0,0,30,30);

if(mouseX < 40 && mouseY < 40){
  background(donkey);
}

  


if(mousePressed){
  tailX=mouseX;
  tailY=mouseY;}
  
  if(tailX>0){
 background(donkey);
 image(tail, tailX, tailY);
 
  
  if(tailX > minX && tailX < maxX && tailY > minY && tailY < maxY)
  println("You've found donkey!");
  }
}
  