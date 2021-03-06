class Sun {
  public float beginX;
  public float beginY;
  public float currentX;
  public float currentY;
  public float currentAngle = PI;    //starting position
  public float diameter;
  public color sunColor;
  public color spokeColor;
  public float spokeSize;
  public int numSpokes;
  float spokeAngle = 0;
  
  //constructor overloads; all or nothing lol
  public Sun(){
  }
  public Sun(float beginX, float beginY, float diameter, color sunColor, color spokeColor, int spokeSize, int numSpokes) {
    this.currentX = beginX;
    this.currentY = beginY;
    this.beginX = beginX;
    this.beginY = beginY;
    this.diameter = diameter;
    this.sunColor = sunColor;
    this.spokeColor = spokeColor;
    this.spokeSize = spokeSize;
    this.numSpokes = numSpokes;
    
  }
  
  public void display() {
    fill(sunColor);
    noStroke();
    ellipseMode(CENTER);
    circle(currentX, currentY, diameter);
    displaySpokes();
  }
  
  //code adapted from https://www.openprocessing.org/sketch/106191
  //moves sun in a circle lol
  public void moveSun(float speed, float size, float spokeSpeed) {
    currentX = beginX + sin(currentAngle) * size;
    currentY = beginY + cos(currentAngle) * size;
    currentAngle += speed;
    if (currentAngle >= TWO_PI) {
        currentAngle -= TWO_PI;
    }
    moveSpokes(spokeSpeed);
  }
  
  public void displaySpokes() {
    float scale = (diameter/1.25) + spokeSize;
    float increment = (2*PI)/numSpokes;
    
    for (int i=0; i<numSpokes; i++) {
      float x = currentX + sin(spokeAngle) * scale;
      float y = currentY + cos(spokeAngle) * scale;
      
      pushMatrix();
      translate(x, y);
      rotate(PI-spokeAngle);
      fill(spokeColor);
      noStroke();
      triangle(0, 0, -0.5*spokeSize, spokeSize*sqrt(3), 0.5*spokeSize, spokeSize*sqrt(3));
      popMatrix();
      
      spokeAngle += increment;
    }
  }
  
  public void moveSpokes(float spokeSpeed) {
    spokeAngle += spokeSpeed;
    if (spokeAngle >= TWO_PI) {
        spokeAngle -= TWO_PI;
    }
  }
}
