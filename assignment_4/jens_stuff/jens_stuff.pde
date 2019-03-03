Sun sun;
color yellow = color(255, 216, 0);
color blue = color(137, 213, 255);

void setup() {
  size(800,800);
  sun = new Sun(width-150, height/2+150, 200, yellow);
}

void draw() {
  background(blue);
  sun.display();
  sun.moveSun(0.02, width/2);
}
