class Birds {
  float startX, startY, sizeX, sizeY, speed;
  PShape birdie;
  float ang = 0.05;
  float s = 100;
  float lerpX = 0;
  
  Birds(float startX, float startY, float sizeX, float sizeY, float speed, PShape birdie) {
    this.startX = startX;
    this.startY = startY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.speed = speed;
    this.birdie = birdie;
  }

  
  void animate() {
    shape(birdie, startX, startY, sizeX, sizeY);
    startX += speed;
    if (startX > width + 100) {
      startX = -100;
    }
  }
  
  void animateBaby(Birds bird) {
    shape(birdie, startX, startY, sizeX, sizeY);
    float dist = bird.sizeY;
    startX =  (dist + sin(ang) * s) + (bird.startX - (bird.sizeX/2));
    startY = (dist + cos(ang) * s) + (bird.startY - (bird.sizeY/2));
    ang = ang + speed;
    
  }
}
