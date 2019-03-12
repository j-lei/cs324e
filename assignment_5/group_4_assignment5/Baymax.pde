//obj and materials/textures from https://www.turbosquid.com/3d-models/free-max-mode-baymax-big-hero-6/881191
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
  public float cubeOrbit;
  public float cubeZ = 0;
  public float cubeX;
  public float cubeHue = 0;
  
  public Baymax(float scale, float xPos, float yPos, float zPos, float xAngle, float yAngle, float zAngle, color bayColor) { 
    this.scale = scale;
    this.xPos = xPos;
    this.yPos = yPos;
    this.zPos = zPos;
    this.xAngle = xAngle;
    this.yAngle = yAngle;
    this.zAngle = zAngle;
    this.bayColor = bayColor; 
    this.cubeSize = scale * 5;
    this.cubeOrbit = scale * 50;
    this.cubeX = xPos;
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
    
    renderCubes();
  }
  
  public void renderCubes() {
    pushMatrix();
    translate(cubeX, yPos, cubeZ);
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

    pushMatrix();
    translate(cubeX, yPos - scale*10, cubeZ);
    scale(scale);
    rotateX(xAngle);
    rotateY(yAngle);
    rotateZ(zAngle);
    noStroke();
    fill(color(360-cubeHue, 100, 100));
    box(cubeSize);
    popMatrix();
    
        
    pushMatrix();
    translate(cubeX, yPos - scale*50, cubeZ);
    scale(scale);
    rotateX(xAngle);
    rotateY(yAngle);
    rotateZ(zAngle);
    noStroke();
    fill(color(360-cubeHue, 100, 100));
    box(cubeSize);
    popMatrix();
    
        
    pushMatrix();
    translate(cubeX, yPos - scale*60, cubeZ);
    scale(scale);
    rotateX(xAngle);
    rotateY(-yAngle);
    rotateZ(zAngle);
    noStroke();
    fill(color(cubeHue, 100, 100));
    box(cubeSize);
    popMatrix();
    
    colorMode(RGB, 255, 255, 255, 100);
  }
  
  public void spin(float amount) {
    this.yAngle += amount;
    if (this.yAngle >= TWO_PI) {
      this.yAngle -= TWO_PI;
    }
    if (this.yAngle <= -TWO_PI) {
      this.yAngle += TWO_PI;
    }
    
    moveCubes();
  }
  
  public void moveCubes() {
    cubeX = xPos - sin(yAngle) * cubeOrbit;
    cubeZ = zPos + cos(yAngle) * cubeOrbit;
  }
}
