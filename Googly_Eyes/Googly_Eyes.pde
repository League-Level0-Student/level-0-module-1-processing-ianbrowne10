int minX = 250;
int minY = 540;
int pupilX = 346;
int pupilY = 506;
int maxY = 450;
int maxX = 440;
void draw(){
fill(255,255,255);
  ellipse(350,500,300,200);
ellipse(675,500,300,200);
fill(0,0,0);
ellipse(pupilX,pupilY,40,40);         
fill(0,0,0);
ellipse(pupilX+671-346,pupilY,40,40);
if(mousePressed){
print( mouseX+ " "+mouseY);
}
if(mouseX<minX){
  pupilX = minX;
}
  else if(mouseX>maxX){
    pupilX = maxX;
    
  }
 else{
   pupilX=mouseX;
 }
 if(mouseY<minY){
  pupilY = minY;
}
  else if(mouseY>maxY){
    pupilY = maxY;
    
  }
 else{
   pupilY=mouseY;
 }
 }
void setup(){
  size(1000,1000);
 

}