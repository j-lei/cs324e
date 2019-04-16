class Enemy extends Pac{
  float x, y, size;
  color c;
  
  public Enemy(){
    this.x = random (25, width - 25);
    this.y = random (25, height - 25);
    this.size = 25;
    this.c = color(255, 0, 0);
  }
  void draw (){
    fill (c);
    rect (this.x, this.y, size, size);
  }
  
  void move(){
    this.x += 5;
    if (this.x > width + 200){
      this.x = -50;
    }
    this.y += 5;
    if (this.y > height + 100){
      this.y = 0;
    }
  }
  
}
