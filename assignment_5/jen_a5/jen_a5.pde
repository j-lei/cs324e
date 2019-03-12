Baymax b;
color white = color(255);
color magenta = color(255, 76, 180);

void setup() {
  size(1000, 1000, P3D);
  b = new Baymax(4, width/2, height/2, 0, 0, 0, PI, white);
  b.load("Bigmax_White_OBJ.obj", "EyesWhite.jpg");
}

void draw() {
  background(0); //<>//
  lights();
  camera();
  b.render();
  b.spin(-TWO_PI/240);
}
