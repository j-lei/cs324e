class Enemy extends Pac{
  float x, y, size;
  color c;
  
  public Enemy(){
    this.x = random (25, width - 25);
    this.y = random (25, height - 25);
    this.size = 25;
    this.c = 255;
  }
  void draw (){
    fill (c, 0, 0);
    rect (this.x, this.y, size, size);
  }
  
  void move(){
    this.x += 2.5;
    if (this.x > width + 200){
      this.x = -50;
    }
    this.y += 2.5;
    if (this.y > height + 100){
      this.y = 0;
    }
  }
    boolean collision ()
  {
    if (  sqrt(  (this.x - posX) * (this.x - posX) + (this.y - posY) * (this.y - posY)  ) < 50)
    {
      this.x = random (25, width - 25);
      this.y = random (25, height - 25);
      background(0);
      textAlign(CENTER);
      textSize(50);
      fill(255,0,0);
      text("You LOSE! \n To restart, press the m key!", width/2, height/2);
      noLoop();
      return true;
    }

    return false;
  }
  
}
