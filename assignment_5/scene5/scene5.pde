HeliumAtom helium;

void setup() {
  size(800, 800, P3D);
  noStroke();
  helium = new HeliumAtom(30);
  
}

void draw() {
  background(255);
  lights();
  
  helium.display();
  
  
}
