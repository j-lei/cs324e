class Cell {
  
  Unit unit;
  Boolean isFilled;
  Boolean isWater;
  Boolean isResidential;
  Boolean isCommercial;
  Boolean isIndustrial;
  int xIndex;
  int yIndex;
  
  public Cell(int xIndex, int yIndex) {
    this.xIndex = xIndex;
    this.yIndex = yIndex;
    isFilled = false;
    isResidential = false;
    isCommercial = false;
    isIndustrial = false;
    isWater = false;
  }
  
  public void iterate(float baseRProb, float baseCProb, float baseIProb, Cell[][] grid) {
    if (isFilled) {
      return;    //don't do anything
    }
    
    Residential r = new Residential();
    if (r.spawn(baseRProb, xIndex, yIndex, grid)) {
      unit = r;
      isFilled = true;
      isResidential = true;
      return;
    }
  }
}
