class Enemy {
  int xpos;
  int ypos;
  float enemyIndex;
  
  
  void moveLeft(){
    if (keyCode == LEFT){
      // if we aren't in the left-most column and the cell to our left then we can move left
      if (enemyIndex > 0){
        enemyIndex--;
      }
    }
  }
  
  void moveRight(){
    if(keyCode == RIGHT){
      // if we aren't in the right-most column and the cell to our right then we can move right
      if (enemyIndex < width -1){
        enemyIndex++;
      }
    }
    
  }
  
  void moveUp(){
  
  }
  
  void moveDown(){
  
  }
}
