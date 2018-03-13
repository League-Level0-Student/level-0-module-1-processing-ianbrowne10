PImage donkey;
PImage tail;
int minX=13;
int minY=57;
int maxX=14;
int maxY=26;
int tailY=0;
int tailX=0;
void setup(){
 donkey = loadImage("download.jpg");      //change the file name if you need to
tail = loadImage("tail.png");      //change the file name if you need to 
  size(1300,1000);
donkey.resize(1300,1000);
  
  
}

void draw(){
background (0,0,0);
image(tail, mouseX, mouseY);
rect(0,0,30,30);
rect(1100,250,40,40);
if(mouseX < 40 && mouseY < 40){
  background(donkey);
}


if(mousePressed){
  tailX=mouseX;
  tailY=mouseY;}
  if(tailX>0){
 background(donkey);
 image(tail, tailX, tailY);
 
  
  if(tailX > minX && tailX < maxX && tailY > minY && tailY < tailY)
  println("You've found donkey!");
  }
}
  