  import ddf.minim.*;  //at the very top of your sketch
 PImage pictureOfRecord;  //as member variable
 Minim minim;  //as a member variable
 int aidan = 0; 
 AudioPlayer song;
void setup(){
pictureOfRecord= loadImage("record.jpg");  //in setup method  
size(750, 750);
minim = new Minim(this);
song = minim.loadFile("Yee.mp3", 512);
}

void draw (){
//in draw method

if(mousePressed){
rotateImage(pictureOfRecord,aidan);
aidan++;

}
image(pictureOfRecord, 0, 0);
if(mousePressed){
  song.play();

}

  

  //as a member variable
  //in the setup method
//in the setup method

}
void mouseReleased()
{
 song.pause(); 
}
void rotateImage(PImage image, int amountToRotate) {
     translate(width/2, height/2);
     rotate(amountToRotate*TWO_PI/360);
     translate(-image.width/2, -image.height/2);
    println("spin");
}