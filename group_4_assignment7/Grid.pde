class Grid{
  boolean isFilled;
  int rows;
  int cols;
 
  public Grid(int rows, int cols){
    this.rows = rows;
    this.cols = cols;
    isFilled = false;
  }
  
  // spawn obstacles, coins, enemies, and player 
  public void spawn(){
    background(128);
    float cellWidth = width/rows;
    float cellHeight = height/cols;
    
    for (int row = 0; row < rows; row++) {
      for (int col = 0; col < cols; col++){
        
        float cellX = cellWidth * col;
        float cellY = cellHeight * row;
        
      }
    }
    
  
  }
  
  // moves all enemies, moves player according to keyboard input, updates number of coins in GUI
  public void iterate(){
  
  }
  
  // checks for win/lose 
  public void checkState(){
  
  }
  
  public void showEnd(){
  
  }
  
  public void reset(){
  
  
  }
  
}
