class HeliumAtom {
  float r, x;
  
  HeliumAtom(float r) {
    this.r = r;
  }
  
  void display() {
    
    translate(width/2, height/2, 0);
    rotateY(frameCount*.02);
    fill(255,0,0);
    pushMatrix();
    translate(-10, 0, -10);
    sphere(r);
    translate(10, 0, -10);
    sphere(r);
    fill(0,0,255);
    translate(0, -10, -10);
    sphere(r);
    translate(0, 10, -10);
    sphere(r);
    
    fill(255,255,0);
    pushMatrix();
    translate(5*r, 0);
    rotateX(radians(45));
    rotateY(radians( frameCount));
    sphere(r/2);
    popMatrix();
    pushMatrix();
    translate(-5*r, 0);
    rotateX(radians(45));
    rotateY(radians( frameCount));
    sphere(r/2);
    popMatrix();
    popMatrix();
    
  }
}
