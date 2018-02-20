void setup(){
size(1000,1000);
}
void draw(){
noStroke();
  for(int i = 20;i>0;i--){
  ellipse(500,500,i *50,i *50);
if(i%2==0){
fill(255,255,255);
}
else{
fill(255,0,0);
}
  }   
    }