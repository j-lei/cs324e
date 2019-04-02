class Commercial extends Unit {
  
  public Boolean spawn(float baseCProb, int xIndex, int yIndex, Cell[][] grid){ 
    float probSpawn = calculateProbability(baseCProb, xIndex, yIndex, grid);
    float roll = random(1);
    if (roll > probSpawn) {
      return false; 
    }
    float xPos = xIndex * 10.0;
    float yPos = yIndex * 10.0;
    fill(0,0,255);
    noStroke();
    square(xPos, yPos, 5);
    return true;
  }

  private float calculateProbability(float baseCProb, int xIndex, int yIndex, Cell[][] grid) {
    float prob = baseCProb;
    for (int i = -2; i < 3; i++) {
      for (int j = -2; j < 3; j++) {
        int x = xIndex+j;
        int y = yIndex+i;
        x = constrain(x, 0, grid.length-1);
        y = constrain(y, 0, grid[xIndex].length-1);
        if (grid[x][y].isCommercial) {
          return 0;        //No Commercial units can exist next to each other
        }
        else if (grid[x][y].isResidential) {
          return prob;
        }
      }
    }
    return 0;
  }
}
