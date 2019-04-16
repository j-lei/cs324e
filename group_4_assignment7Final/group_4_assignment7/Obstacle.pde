class Obstacle extends Pac{
  float x, y, size;
  color c;
  
  public Obstacle(){
    this.x = random (25, width - 25);
    this.y = random (25, height - 25);
    this.size = 16;
    this.c = 255;
  }
  
  void draw(){
    fill(0);
    rect(this.x, this.y, size, size); 
  }
}
