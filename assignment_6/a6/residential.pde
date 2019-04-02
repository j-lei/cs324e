class Residential extends Unit {
  
  public Boolean spawn(float baseRProb, int xIndex, int yIndex, Cell[][] grid){ 
    float probSpawn = calculateProbability(baseRProb, xIndex, yIndex, grid);
    float roll = random(1);
    if (roll > probSpawn) {
      return false; 
    }
    float xPos = xIndex * 15.0;
    float yPos = yIndex * 15.0;
    fill(255,0,0);
    noStroke();
    square(xPos, yPos, 5);
    return true;
  }
  
  private float calculateProbability(float baseRProb, int xIndex, int yIndex, Cell[][] grid) {
    float prob = baseRProb; //<>//
    for (int i = -2; i < 3; i++) {
      for (int j = -2; j < 3; j++) {
        int x = xIndex+j; //<>//
        int y = yIndex+i;
        x = constrain(x, 0, grid.length-1);
        y = constrain(y, 0, grid[xIndex].length-1);
        
        // no residential and industrial units can exist next to each other
        if (grid[x][y].isIndustrial) {
          return 0;        
        }
        // residential units are more likely to spawn near each other; this effect decreases w/ distance
        if (grid[x][y].isResidential) {
          prob += (0.1 - 0.02*(abs(i) + abs(j)))*random(1);      
        }
        // residential units are slighhhtly more likely to spawn near water
        if (grid[x][y].isWater) {
          prob += 0.002 * random(1);    
        }
      }
    }
    return prob;
  }
}
