  PImage creeper;     //at the top 
void setup(){
    size(1300,1000);
  creeper=loadImage("chicken.png");     //in setup method
 PImage minecraft = loadImage("green.jpg");     //in setup method
minecraft.resize(1300, 1000);     //in setup method
background(minecraft);     //in setup method
creeper.resize(6,6);


  
}

void draw(){
  image(creeper, 970, 5);     //in draw method
if(mousePressed){
  println(mouseX + mouseY);
  
}
 noStroke();
 if(mousePressed && Y<10 && X<10){
 ellipse(mouseX,mouseY,20,20);
 fill (#22D80B);
 }

  else {
  ellipse(mouseX,mouseY,20,20);
 fill (#D81F1F);
}
  
  
  }