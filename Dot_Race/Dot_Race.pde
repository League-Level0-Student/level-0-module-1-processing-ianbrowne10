int x = 50;
void setup() {
  size(800, 200);
}
void draw() {
background(#11A9F2);
  noStroke();
  fill(#B3ED07);
ellipse(x,100,100,100);
if (mousePressed){
  x=x+10;
  
}

if (x>700){
  playSound ();
  
  
}


}
import ddf.minim.*;
boolean soundPlayed = false;
void playSound() {
  if (!soundPlayed) {
    Minim minim = new Minim(this);                                
    AudioSample sound = minim.loadSample("ding.wav");
    sound.trigger();
    soundPlayed = true;
  }
}