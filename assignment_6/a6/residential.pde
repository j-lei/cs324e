class Residential extends Unit {
  
  public Boolean spawn(float baseRProb, Cell[][] neighbors, float xPos, float yPos){ 
    float probSpawn = calculateProbability(baseRProb, neighbors);
    return false; 
  }
  
  private float calculateProbability(float baseRProb, Cell[][] neighbors) {
    return 0;
  }
}
