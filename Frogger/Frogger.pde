int frogX = 400;
int frogY = 550;
Car car1 = new Car(0, 200, 75, 5);
Car car2 = new Car(750, 300, 75, -6);
Car car3 = new Car(0, 100, 75, 7);
Car car4 = new Car(750, 400, 75, -8);
void draw() {
  noStroke(); 
  background(#19C169);
  fill(#5A5858);
  rect(0, 100, 800, 350);
  fill(#F6FA4C);
  ellipse(frogX, frogY, 45, 45);

  edge();
  car1.display();
  car2.display();
  car3.display();
  car4.display();
  car1.drive();
  car2.drive();
  car3.drive();
  car4.drive();

}
    boolean intersects(Car car ) {
      if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
    {return true;
    }  else {
      
      return false;
    }
    }
    
void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
    
      frogY-=25;
    } else if (keyCode == DOWN)
    {
      frogY+=25;
    } else if (keyCode == RIGHT)
    {
      frogX+=25;
    } else if (keyCode == LEFT)
    {
      frogX-=25;
    }
 if(intersects(car1)){
   frogX = 550;
 frogY = 400;
 }
if(intersects(car2)){
   frogX = 550;
 frogY = 400;
 }
if(intersects(car3)){
    frogX = 550;
 frogY = 400;
 }
if(intersects(car4)){
    frogX = 550;
 frogY = 400;
 }
}
}
void edge() {
  if (frogY>600) {
    frogY-=25;
  }
  if (frogY<0) {
    frogY+=25;
  }
  if (frogX>800) {
    frogX-=25;
  }
  if (frogX<0) {
    frogX+=25;
  }
}

void setup() {
  size(800, 600);
}



  public class Car {
    private int carX;
    private int carY;
    private int size;
    private int speed;
    Car(int carX, int carY, int size, int speed) {
      this.carX = carX;
      this.carY = carY;
      this.size = size;
      this.speed = speed;
    }
    void display() 
    {
      fill(#FA4C4C);
      rect(carX, carY, size, 50);
    }

    void drive() {


      carX+=speed;

      if (carX<-75) {
        carX=750;
      }
      if (carX>875) {
        carX=-74;
      }
    }
    int getX() {
    return carX;
    }
    int getY() {
    return carY;
    }
    int getSize() {
    return size;
    }
    

  }