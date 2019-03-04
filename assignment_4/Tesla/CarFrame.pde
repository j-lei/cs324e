class CarFrame{
  
  float x;
  float y;
  float speed;
  color c;
  
  CarFrame(float x, float y, float speed, color c){
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.c = c;
  
  }
  void display(){
    rectMode(CENTER);
    fill(c);
    // upper body frame of the car 
    rect(x, y - 25, 150, 90);
    stroke(0);
    strokeWeight(2);
    fill(0);
    // tinted windshield 
    rect(x + 50, y - 25, 80, 90);
    noStroke();
    fill(c);
    // bottom body frame of the car 
    rect(x, y, 250, 75);
    DrawFace();
  }
  void drive(){
    x += speed;
    if (x > width + 200){
      x = -100;
    }
  }
  
  void DrawFace(){
    noStroke();
    fill(255, 255, 0);
    // Draw the main face 
    ellipse(x + 50, y - 55, 25, 25);
    fill(0);
    // Draw the eyes 
    ellipse(x + 45, y - 60, 5, 10);
    ellipse(x + 54, y - 60, 5, 10);
    arc(x + 49, y - 54, 18, 10, PI * 0.2, PIE * 0.7);
  }
}
