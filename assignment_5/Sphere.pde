class Sphere{
  float x, y, z, r;
  float spin = 0;
  float angle = 0;
  float direction;
 
  Sphere(float x, float y, float z, float r, float direction){
    this.x = x;
    this.y = y;
    this.z = z;
    this.r = r;
    this.direction = direction;
    
  }
  
  void rotating(){
    spin += direction * 0.02;
    rotateY(spin);
    rotateX(spin * 0.06);
    strokeWeight(1);
    stroke(int(sin(angle) * 255), int(cos(angle) * 255), int(tan(angle) * 255));
    sphereDetail(20);
    angle += TWO_PI/900;
  } 
 
  void display(){
    strokeWeight(2);
    pushMatrix();
    translate(x, y, z);
    rotating();
    noFill();
    sphere(r);
    popMatrix();
  }
  
  
}
