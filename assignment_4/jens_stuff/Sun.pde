class Sun {
  public float beginX;
  public float beginY;
  public float currentX;
  public float currentY;
  public float currentAngle = PI;    //starting position
  public float diameter;
  public color sunColor;
  
  //constructor overloads; all or nothing lol
  public Sun(){
  }
  public Sun(float beginX, float beginY, float diameter, color sunColor) {
    this.currentX = beginX;
    this.currentY = beginY;
    this.beginX = beginX;
    this.beginY = beginY;
    this.diameter = diameter;
    this.sunColor = sunColor;
  }
  
  public void display() {
    fill(sunColor);
    noStroke();
    ellipseMode(CENTER);
    circle(currentX, currentY, diameter);
  }
  
  //code adapted from https://www.openprocessing.org/sketch/106191
  //moves sun in a circle lol
  public void moveSun(float speed, float size) {
    currentX = beginX + sin(currentAngle) * size;
    currentY = beginY + cos(currentAngle) * size;
    currentAngle += speed;
  }
}
