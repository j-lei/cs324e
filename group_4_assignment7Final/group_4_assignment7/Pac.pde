class Dot 
{
  float x, y, size;

  Dot ()
  {
    this.x = random (25, width - 25);
    this.y = random (25, height - 25);
    this.size = 12;
  }

  Dot ( float x, float y)
  {
    this.x = x;
    this.y = y;
    this.size = 25;
  }


  void draw ()
  {
    fill (255);
    ellipse (this.x, this.y, size, size);
  }

  boolean checkCollision ()
  {
    if (  sqrt(  (this.x - curX) * (this.x - curX) + (this.y - curY) * (this.y - curY)  ) < pacmanRadius)
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
