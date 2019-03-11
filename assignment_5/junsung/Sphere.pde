class Sphere{
  float x, y, z, r;
  float spin = 0;
  float angle = 0;
  float direction;
  float distance;
 
  Sphere(float x, float y, float z, float r, float direction){
    this.x = x;
    this.y = y;
    this.z = z;
    this.r = r;
    this.direction = direction;
    
  }
  
  void rotating(){
    spin += direction * 0.02;
    rotateX(spin * 0.06);
    rotateY(spin);
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
  
  void electrons(){
    pushMatrix();
      translate(x,y,z);
      scale(.2);
      noFill();
      noStroke();  
      // Whites 
      pushMatrix();
        lights();
        rotateZ(angle + PI);
        translate(x + distance/2, 0, 0);
        fill(255);
        sphere(r);
      popMatrix();
      
      pushMatrix();
        lights();
        rotateX(angle + PI);
        translate(0, -(y + distance/2), 0);
        sphere(r);
      popMatrix();
      
      pushMatrix();
        lights();
        rotateZ(angle + PI);
        translate(0, y + distance/2 , 0);
        fill(255, 0, 0);
        sphere(r);
      popMatrix();
      
      pushMatrix();
        lights();
        rotateY(angle + PI);
        translate(-(x + distance/2), 0 , 0);
        fill(255,0, 0);
        sphere(r);
      popMatrix();
     
    popMatrix();
    
  }
    
}
  
