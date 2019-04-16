class Pac 
{
  float x, y, size;
  color c;

  // coins 
  public Pac ()
  {
    this.x = random (25, width - 25);
    this.y = random (25, height - 25);
    this.size = 12;
    this.c = (255);
  }

  void draw ()
  {
    fill (c);
    ellipse (this.x, this.y, size, size);
  }

  boolean checkCollision ()
  {
    if (  sqrt(  (this.x - posX) * (this.x - posX) + (this.y - posY) * (this.y - posY)  ) < 50)
    {
      this.x = random (25, width - 25);
      this.y = random (25, height - 25);
      score += 5;
      println(score);
      return true;
    }

    return false;
  }
}
