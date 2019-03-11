Sphere s, s1;

void setup(){
  size(600, 600, P3D);
  background(0);
  s = new Sphere(300, 300, 300, 50, 1);
  s1 = new Sphere(300, 300, 300, 25, -1);
}

void draw(){
  background(0);
  s.display();
  s1.display();
  
}
