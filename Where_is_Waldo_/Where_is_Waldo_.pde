int minX = 90;
int maxX = 120;
int minY = 574;
int maxY = 602;
void setup() {
      PImage waldo = loadImage("puzzle_small.jpg"); // 5. Change this to match your file name.
      size(1000, 707);
      image(waldo, 0, 0);
     doh = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-doh.wav");
     woohoo = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-woohoo.wav");
}

void draw() {
     
  // 6. Use this print statement to find out the coordinates of Waldo
    // if(mousePressed){
       //println("X: " + mouseX + " Y: " + mouseY); }

      // 7. If the mouse is on Waldo, print “Waldo found!”
if(mousePressed){
  if(mouseX > minX && mouseX < maxX && mouseY > minY && mouseY < maxY){
   playWoohoo();
 println("You've found Waldo!");
 

  }
else{
  playDoh();
}
 

   }
      
      // 8. If Waldo is found, also use the method below to play “Woohoo”
      // Change the name of the sound file if you need to 
      // 9. If the mouse is pressed and they’re not on Waldo, play “Doh”
      // Change the name of the sound file if you need to 
}

void playWoohoo() {
     woohoo.stop();
     woohoo.trigger();}


void playDoh() {
     doh.stop();
    doh.trigger();
}

import ddf.minim.*;
Minim minim = new Minim(this); 
AudioSample doh;
AudioSample woohoo;