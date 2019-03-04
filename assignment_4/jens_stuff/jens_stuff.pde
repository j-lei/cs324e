Sun sun;
Sun moon;
color yellow = color(255, 216, 0);
color orange = color(255, 116, 30);
color blue = color(137, 213, 255);
color grey = color(180, 180, 180);
color white = color(255);

void setup() {
  size(800,800);
  sun = new Sun(width-150, height/2+150, 200, yellow, orange, 30, 10);
  moon = new Sun(width - 200, height/2 + 100, 100, grey, white, 5, 40);
}

void draw() {
  background(blue);
  sun.display();
  sun.moveSun(0.015, width/2, 0.03);
  
  moon.display();
  moon.moveSun(0.02, width/3, 0.05);
}
