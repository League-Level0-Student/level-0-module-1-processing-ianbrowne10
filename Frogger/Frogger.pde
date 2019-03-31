int frogX = 400;
int frogY = 550;
Car car1 = new Car (750,200,75,50);
Car car2 = new Car(750,300,75,50);
Car car3 = new Car(750,100,75,50);
Car car4 = new Car(750,400,75,50);
void draw(){
 noStroke(); 
  background(#19C169);
  fill(#F6FA4C);
ellipse(frogX,frogY,45,45);
edge();
car1.display();
car2.display();
car3.display();
car4.display();
}
void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
                 frogY-=25;
            }
            else if(keyCode == DOWN)
            {
                  frogY+=25;
            }
            else if(keyCode == RIGHT)
            {
                  frogX+=25;
            }
            else if(keyCode == LEFT)
            {
                 frogX-=25;
            }
      }
}
void edge(){
  if(frogY>600){
    frogY-=25;
  }
  if(frogY<0){
   frogY+=25; 
  }
  if(frogX>800){
   frogX-=25; 
  }
  if(frogX<0){
   frogX+=25; 
  }
  }

void setup(){
  size(800,600);
  
  
  
}
public class Car{
private int carX;
private int carY;
private int size;
private int speed;
Car(int carX,int carY,int size,int speed){
 this.carX = carX;
 this.carY = carY;
 this.size = size;
 this.speed = speed;
}
void display() 
{
      fill(#FA4C4C);
      rect(carX , carY, size, 50);
}
void drive(){
  if(speed == 20){
    for(int i = 0; i<40; i++){
    carX+=20;
    }
}
if(speed == 25){
  for(int j = 0; j<32;j++){
    carX+=25;
  }
  
}


}
}