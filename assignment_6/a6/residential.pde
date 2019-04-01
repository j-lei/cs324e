class Residential extends Unit {
  
  public Boolean spawn(float baseRProb, int xIndex, int yIndex, Cell[][] grid){ 
    float probSpawn = calculateProbability(baseRProb, xIndex, yIndex, grid);
    float roll = random(1);
    if (roll > probSpawn) {
      return false; 
    }
    return true;
  }
  
  private float calculateProbability(float baseRProb, int xIndex, int yIndex, Cell[][] grid) {
    float prob = baseRProb;
    for (int i = -1; i < 2; i++) {
      for (int j = -1; j < 2; j++) {
        int x = constrain(xIndex+j, 0, grid[i].length);
        int y = constrain(yIndex+i, 0, grid.length);
        if (grid[y][x].isResidential) {
          prob *= 1.2;
        }
      }
    }
    return prob;
  }
}
