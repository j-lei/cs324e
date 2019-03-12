class Baymax {
  
  PShape baymax;
  PImage txt;
  
  public float scale;
  public float xPos;
  public float yPos;
  public float zPos;
  public float xAngle;
  public float yAngle;
  public float zAngle;
  public color bayColor;
  public float cubeSize;
  public float cubeHue = 0;
  public int numDots;
  
  public Baymax(float scale, float xPos, float yPos, float zPos, float xAngle, float yAngle, float zAngle, color bayColor) { 
    this.scale = scale;
    this.xPos = xPos;
    this.yPos = yPos;
    this.zPos = zPos;
    this.xAngle = xAngle;
    this.yAngle = yAngle;
    this.zAngle = zAngle;
    this.bayColor = bayColor; 
    this.cubeSize = scale * 10;
    this.numDots = numDots;
  }
  
  public void load(String objFile, String textureFile) {
    this.baymax = loadShape(objFile);
    this.txt = loadImage(textureFile);
    this.baymax.setFill(bayColor);
    this.baymax.setTexture(txt);
    textureMode(NORMAL);
    textureWrap(CLAMP);
  }
  
  public void render() {
    pushMatrix();
    translate(xPos, yPos, zPos);
    scale(scale);
    rotateX(xAngle);
    rotateY(yAngle);
    rotateZ(zAngle);
    shape(this.baymax);
    popMatrix();
    
    renderCube();
  }
  
  public void renderCube() {
    pushMatrix();
    translate(xPos, yPos + scale*20, zPos);
    scale(scale);
    rotateX(xAngle);
    rotateY(-yAngle);
    rotateZ(zAngle);
    
    colorMode(HSB, 360, 100, 100);
    noStroke();
    fill(color(cubeHue, 100, 100));
    box(cubeSize);
    cubeHue = degrees(abs(this.yAngle));
    popMatrix();
  }
  
  public void spin(float amount) {
    this.yAngle += amount;
    if (this.yAngle >= TWO_PI) {
      this.yAngle -= TWO_PI;
    }
    if (this.yAngle <= -TWO_PI) {
      this.yAngle += TWO_PI;
    }
  }
}
