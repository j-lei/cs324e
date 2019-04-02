class Commercial extends Unit {
  
  PShape comm;
  
  public Boolean spawn(float baseCProb, int xIndex, int yIndex, Cell[][] grid){ 
    float probSpawn = calculateProbability(baseCProb, xIndex, yIndex, grid);
    float roll = random(1);
    if (roll > probSpawn) {
      return false; 
    }
    float xPos = xIndex * 15.0;
    float yPos = yIndex * 15.0;
    noStroke();
    //square(xPos, yPos, 5);
    PShape comm = loadShape("commercial.svg");
    // Icons made by SimpleIcon from "https://www.flaticon.com/"   Flaticon is licensed by "http://creativecommons.org/licenses/by/3.0/"
    shape(comm, xPos, yPos, 15, 15);
    return true;
  }

  private float calculateProbability(float baseCProb, int xIndex, int yIndex, Cell[][] grid) {
    float prob = 0;
    for (int i = -2; i < 3; i++) {
      for (int j = -2; j < 3; j++) {
        int x = xIndex+j;
        int y = yIndex+i;
        x = constrain(x, 0, grid.length-1);
        y = constrain(y, 0, grid[xIndex].length-1);
        if (grid[x][y].isResidential) {
          prob+=.01;
    }
        if (grid[x][y].isCommercial) {
          return 0;
  }
    }

}
  if (prob > 0) {
    return 0.007;
  }
  return 0;
}
  }
