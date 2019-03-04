class Wheel{
  float x;
  float y;
  float r;
  float speed;
  color c;
  
  Wheel(float x, float y, float r, float speed, color c){
    this.x = x;
    this.y = y;
    this.r = r;
    this.speed = speed;
    this.c = c;
  }
  
  void display(){
    pushMatrix();
    noFill();
    translate(x, y);
    rotate(r);
    fill(c);
    // drawing the wheel
    ellipse(0, 0, 50, 50);
    rectMode(CENTER);
    fill(255);
    // wheel frame 
    rect(0, 0, 15, 15);
    r += 0.03;
    strokeWeight(1);
    popMatrix();
  
  }
  void drive(){
    noFill();
    x += speed;
    if (x > width + 200){
      x = -100;
    }  
  } 
}
