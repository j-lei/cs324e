import java.util.Arrays; 

class Grid{
  int rows;
  int cols;
  int[][] grid;
  int eCount;
  int cCount;
 
  public Grid(int rows, int cols){
    this.rows = rows;
    this.cols = cols;
        background(255);
    
    int[][] grid = new int[rows][cols];
    eCount = 0;
    cCount = 0;
    for (int row = 0; row < grid.length; row++) {
      for (int col = 0; col < grid[row].length; col++) {
        if (random(1) < 0.1) {
          grid[row][col] = 1;
        }
        if (eCount < 7) {
          if (random(1) < 0.05) {
            grid[row][col] = 2;
            eCount += 1;
        }
        }
        if (cCount < 5) {
          if (random(1) < 0.05) {
            grid[row][col] = 3;
            cCount += 1;
          }
        }
          
    }
    }
    
    float cellWidth = width/rows;
    float cellHeight = height/cols;
   
    
    for (int row = 0; row < rows; row++) {
      for (int col = 0; col < cols; col++){
        
        float cellX = cellWidth * col;
        float cellY = cellHeight * row;
        
        if (grid[row][col] == 1) {
          fill(0, 0, 0);
        }
        
        else if (grid[row][col] == 2) {
          fill(255, 0, 0);
        }
        
        else if (grid[row][col] == 3) {
          fill(255,225,0);
        }
        else {
          noFill();
        }
        
        rect(cellX, cellY, cellWidth, cellHeight);
      }
    }
  }
  
  // spawn obstacles, coins, enemies, and player 
  public void spawn(){
    //background(255);
    
    //int[][] grid = new int[rows][cols];
    //eCount = 0;
    //for (int row = 0; row < grid.length; row++) {
    //  for (int col = 0; col < grid[row].length; col++) {
    //    if (random(1) < 0.1) {
    //      grid[row][col] = 1;
    //    }
    //    if (eCount < 7) {
    //      if (random(1) < 0.05) {
    //        grid[row][col] = 2;
    //        eCount += 1;
    //    }
    //    }
          
    //}
    //}
    
    //float cellWidth = width/rows;
    //float cellHeight = height/cols;
   
    
    //for (int row = 0; row < rows; row++) {
    //  for (int col = 0; col < cols; col++){
        
    //    float cellX = cellWidth * col;
    //    float cellY = cellHeight * row;
        
    //    if (grid[row][col] == 1) {
    //      fill(0, 0, 0);
    //    }
        
    //    else if (grid[row][col] == 2) {
    //      fill(255, 0, 0);
    //    }
    //    else {
    //      noFill();
    //    }
        
    //    rect(cellX, cellY, cellWidth, cellHeight);
    //  }
    //}
    if (millis() % 1000 == 0) {
      print("yeet");
      for (int row = 0; row < rows; row++) {
      for (int col = 0; col < cols; col++){
        if (grid[row][col] == 2) {
          grid[row][col] = 0;
          fill(255);
          grid[row+int(random(-1,1))][col+int(random(-1,1))] = 2;
          fill(255, 0, 0);
        }
      }
      }
    }
    }
    
  
  
  // moves all enemies, moves player according to keyboard input, updates number of coins in GUI
  public void iterate(){
    //for (int row = 0; row < rows; row++) {
    //  for (int col = 0; col < cols; col++){
    //    if (grid[row][col] == 2) {
    //      grid[row][col] = 0;
    //      fill(255);
    //      grid[row+int(random(-1,1))][col+int(random(-1,1))] = 2;
    //      fill(255, 0, 0);
    //    }
    //  }
    //}
  }
  
  // checks for win/lose 
  public void checkState(){
  
  }
  
  public void showEnd(){
  
  }
  
  public void reset(){
  
  
  }
 }
