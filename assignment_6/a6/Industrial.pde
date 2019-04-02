class Industrial extends Unit {
  
  PShape ind;
  
  public Boolean spawn(float baseIProb, int xIndex, int yIndex, Cell[][] grid){ 
    float probSpawn = calculateProbability(baseIProb, xIndex, yIndex, grid);
    float roll = random(1);
    if (roll > probSpawn) {
      return false; 
    }
    float xPos = xIndex * 15.0;
    float yPos = yIndex * 15.0;
    fill(0,255,0);
    noStroke();
    //square(xPos, yPos, 5);
    PShape ind = loadShape("factory.svg");
    // Icons made by SimpleIcon from "https://www.flaticon.com/" 
    // Licensed by http://creativecommons.org/licenses/by/3.0/" 
    shape(ind, xPos, yPos, 15, 15);
    return true;
  }

  private float calculateProbability(float baseIProb, int xIndex, int yIndex, Cell[][] grid) {
    float prob = baseIProb;
    for (int i = -2; i < 3; i++) {
      for (int j = -2; j < 3; j++) {
        int x = xIndex+j;
        int y = yIndex+i;
        x = constrain(x, 0, grid.length-1);
        y = constrain(y, 0, grid[xIndex].length-1);
        if (grid[x][y].isResidential) {
          return 0; // No residential unit can spawn next to industrial unit 
        }
        else if (grid[x][y].isWater) {
          return prob += 0.00025 * random(1);
        }
      }
    }
    return 0;
  }
}
