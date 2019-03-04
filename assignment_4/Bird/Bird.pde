class Birds {
  float startX, startY, sizeX, sizeY, speed;
  PShape birdie;
  float ang = 0.05;
  float s = 100;
  
  Birds(float startX, float startY, float sizeX, float sizeY, float speed, PShape birdie) {
    this.startX = startX;
    this.startY = startY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.speed = speed;
    this.birdie = birdie;
  }

 //This function creates a bird and causes it to move horizontally at a steady rate until it reaches the end, and then it loops back
  void animate() {
    shape(birdie, startX, startY, sizeX, sizeY);
    startX += speed;
    if (startX > width + 100) {
      startX = -100;
    }
  }
  
  //This function creates a bird that circles around another bird object
  //Code adapted from https://www.openprocessing.org/sketch/106191/ by Heisei
  void animateBaby(Birds bird) {
    shape(birdie, startX, startY, sizeX, sizeY);
    float dist = bird.sizeY;
    startX =  (dist + sin(ang) * s) + (bird.startX - (bird.sizeX/2));
    startY = (dist + cos(ang) * s) + (bird.startY - (bird.sizeY/2));
    ang = ang + speed;
    
  }
}
