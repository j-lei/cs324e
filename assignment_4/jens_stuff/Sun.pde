class Sun {
  public float x;
  public float y;
  public float radius;
  public color sunColor;
  
  //constructor overloads are all or nothing lol
  public Sun(){
  }
  public Sun(float x, float y, float radius, color sunColor) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.sunColor = sunColor;
  }
  
  public void display() {
    fill(this.sunColor);
    noStroke();
    
  }
}
