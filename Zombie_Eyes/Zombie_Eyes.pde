

void setup() {
  size(500,500);
  PImage face = loadImage("funny-dog-big-eyes-cupcake.jpg");
face.resize(500, 500);
image(face, 10, 0);

}





void draw() {
 fill(#F7FBFC);
  ellipse(244,98,65,65);
  ellipse(356,130,65,65);
fill(#00070A);
  ellipse(244,98,40,40);
    ellipse(356,130,45,40);

  if (mousePressed){
println(mouseX);
 println(mouseY);
 }
}