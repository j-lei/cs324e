Baymax b1;
Baymax b2;

Sphere s1;
Sphere s2;

HeliumAtom a1;
HeliumAtom a2;

color white = color(255);
color pink = color(255, 200, 255);

void setup() {
  size(1000, 1000, P3D);
  
  //baymaxes
  b1 = new Baymax(4, width/2-200, height/2+200, 0, 0, 0, PI, white);
  b1.load("Bigmax_White_OBJ.obj", "EyesWhite.jpg");
  b2 = new Baymax(2, width/2+100, height/2 - 200, 100, 0, 0, PI, pink);
  b2.load("Bigmax_White_OBJ.obj", "EyesWhite.jpg");
  
  //spheres
  s1 = new Sphere(width/2-200, height/2 + 300, 0, 100, -1);
  s2 = new Sphere(width/2+100, height/2 - 150, 100, 50, 1);
  
  //atoms
  a1 = new HeliumAtom(20);
  a2 = new HeliumAtom(30);
}

void draw() {
  background(0);
  
  directionalLight(150, 50, 50, 0, -1, 0);
  directionalLight(100, 120, 255, 0, 1, 0);
  ambientLight(75, 75, 75);
  camera();
  b1.render();
  b1.spin(TWO_PI/240);
  b2.render();
  b2.spin(-TWO_PI/120);
  
  s1.display();
  s1.electrons();
  
  s2.display();
  s2.electrons();
  
  pushMatrix();
  translate(-width/4, -height/3);
  a1.display();
  popMatrix();
  
  pushMatrix();
  translate(width/4, height/3);
  a2.display();
  popMatrix();
  
  String s = "S C I E N C E \n R U L E S";
  textSize(60);
  fill(255);
  text(s, 550, 500, 950, 1000); 
}
