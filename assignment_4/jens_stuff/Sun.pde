class Sun {
  public float beginX;
  public float beginY;
  public float currentX;
  public float currentY;
  public float currentAngle = PI;    //starting position
  public float diameter;
  public color sunColor;
  public color spokeColor;
  public int numSpokes;
  public Spoke[] spokes;
  
  //constructor overloads; all or nothing lol
  public Sun(){
  }
  public Sun(float beginX, float beginY, float diameter, color sunColor, color spokeColor, int numSpokes) {
    this.currentX = beginX;
    this.currentY = beginY;
    this.beginX = beginX;
    this.beginY = beginY;
    this.diameter = diameter;
    this.sunColor = sunColor;
    this.spokeColor = spokeColor;
    this.numSpokes = numSpokes;
    this.spokes = new Spoke[numSpokes];
    
    for(int i=0; i<numSpokes; i++) {
      Spoke s = new Spoke();
      this.spokes[i] = s;
    }
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
  public void moveSun(float speed, float size) {
    currentX = beginX + sin(currentAngle) * size;
    currentY = beginY + cos(currentAngle) * size;
    currentAngle += speed;
  }
  
  public void displaySpokes() {
    float angle = 0;
    float scale = diameter * 1.25;
    float increment = (2*PI)/numSpokes;
    
    for (int i=0; i<numSpokes; i++) {
      pushMatrix();
      float x = currentX + sin(angle) * scale;
      float y = currentY + scale + cos(angle) * scale;
      popMatrix();
      angle += increment;
    }
  }
}
