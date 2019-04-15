class Player extends Grid {

  int playerIndexX;
  int playerIndexY;
  
  public Player(int rows, int cols, int playerIndexX, int playerIndexY){
    super(rows, cols);
    this.playerIndexX = playerIndexX;
    this.playerIndexY = playerIndexY;
    
  }
  void display(){
    int cellWidth = width/rows;
    int cellHeight = height/cols;
    int playerPixelX = playerIndexX * cellWidth;
    int playerPixelY = playerIndexY * cellHeight;
    
    fill(0, 255, 0);
    rect(playerPixelX, playerPixelY, cellWidth, cellHeight);
    
  }
  
}
