int spot = 10;
float x = 10;
float y = 10;
void setup(){
   size(800,600);   
  background(0,250,0);
}

void draw(){


makeMagical();
  for(int i = 0; i <299; i++){
    fill(frameCount,i,10);
    ellipse(x,y,4,4);
x = getWormX(i);
y = getWormY(i);
  }
}

float frequency = .001;
float noiseInterval = PI;

void makeMagical() {
     fill( 0, 0, 0, 10 );
     rect(0, 0, width, height);
     noStroke();
}

float getWormX(int i) {
     return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
     return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}