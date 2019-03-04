Sun sun;
color yellow = color(255, 216, 0);
color orange = color(255, 116, 30);
color blue = color(137, 213, 255);

void setup() {
  size(800,800);
  sun = new Sun(width-150, height/2+150, 200, yellow, orange, 30, 10);
}

void draw() {
  background(blue);
  sun.display();
  sun.moveSun(0.015, width/2, 0.03);
}
