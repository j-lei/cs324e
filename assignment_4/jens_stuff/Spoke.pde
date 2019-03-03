class Spoke {
  public float beginX;    //the "important" x,y point is the bottom left one
  public float beginY;
  public float sideLength;
  public color spokeColor;
  public float currentX;
  public float currentY;
  public float currentX2 = currentX + sideLength;
  public float currentY2 = currentY;
  public float currentX3 = currentX + sideLength/2;
  public float currentY3 = currentY + sideLength * sqrt(3);
  
  
  public Spoke() {
  }
  public void init(float beginX, float beginY, float sideLength, color spokeColor) {
    this.beginX = beginX;
    this.beginY = beginY;
    this.sideLength = sideLength;
    this.spokeColor = spokeColor;
    this.currentX = beginX;
    this.currentY = beginY;
  }
  
  public void display() {
    fill(spokeColor);
    noStroke();
    triangle(currentX, currentY, currentX2, currentY2, currentX3, currentY3);
  }
}
