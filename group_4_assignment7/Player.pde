class Player {
  int xpos;
  int ypos;
  float playerIndexX;
  float playerIndexY;
  
  
  void moveLeft(){
    if (keyCode == LEFT){
      // if we aren't in the left-most column and the cell to our left then we can move left
      if (playerIndexX > 0){
        playerIndexX--;
      }
    }
  }
  
  void moveRight(){
    if(keyCode == RIGHT){
      // if we aren't in the right-most column and the cell to our right then we can move right
      if (playerIndexX < width -1){
        playerIndexX++;
      }
    }
    
  }
  
  void moveUp(){
    if(keyCode == UP){
      // if we aren't in the top row then we can move up 
      if (playerIndexY > 0){
        playerIndexY--;
      }
    }
  
  }
  
  void moveDown(){
    if(keyCode == DOWN){
      if (playerIndexY < height-1){
        playerIndexY++;
      }
    }
  
  }
}
