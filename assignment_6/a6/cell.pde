class Cell {
  
  Unit unit;
  Boolean isFilled;
  Boolean isResidential;
  Boolean isCommercial;
  Boolean isIndustrial;
  int xPos;
  int yPos;
  Cell[][] neighbors;
  
  public Cell(int xPos, int yPos) {
    this.xPos = xPos;
    this.yPos = yPos;
    isFilled = false;
    isResidential = false;
    isCommercial = false;
    isIndustrial = false;
  }
  
  public void iterate(float baseRProb, float baseCProb, float baseIprob) {
    Residential r = new Residential();
    if (r.spawn(baseRProb, neighbors, xPos, yPos)) {
      unit = r;
      isFilled = true;
      isResidential = true;
    }
  }
}
