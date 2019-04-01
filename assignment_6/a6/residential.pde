class Residential extends Unit {
  
  public Boolean spawn(float baseRProb, int xIndex, int yIndex, Cell[][] grid){ 
    float probSpawn = calculateProbability(baseRProb, xIndex, yIndex, grid);
    float roll = random(1);
    if (roll > probSpawn) {
      return false; 
    }
    fill(255,0,0);
    noStroke();
    square(xIndex*10, yIndex*10, 5);
    return true;
  }
  
  private float calculateProbability(float baseRProb, int xIndex, int yIndex, Cell[][] grid) {
    float prob = baseRProb; //<>//
    for (int i = -1; i < 2; i++) {
      for (int j = -1; j < 2; j++) {
        int x = xIndex+j; //<>//
        int y = yIndex+i;
        x = constrain(x, 0, grid.length-1);
        y = constrain(y, 0, grid[xIndex].length-1);
        if (grid[x][y].isIndustrial) {
          return 0;        // no residential and industrial units can exist next to each other
        }
        if (grid[x][y].isResidential) {
          prob += 0.1;
        }
      }
    }
    return prob;
  }
}
