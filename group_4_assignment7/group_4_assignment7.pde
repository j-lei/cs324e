Grid grid;
<<<<<<< HEAD
Player p;
boolean paused = false;
boolean gameFinished = false;
=======
//Grid grid = new Grid(10, 10);

>>>>>>> a711c942061f4089e28568e1185e07c36c7630ae

void setup(){
  size(500, 500);
  Grid grid = new Grid(10, 10);
<<<<<<< HEAD
  grid.spawn();
  Player p = new Player(10, 10, 4, 7);
  p.display();
}

void draw(){
  //for (Grid[] row : grid){
  //  for (Grid g : row){
  //    g.iterate();
  //  }
  //}
  void keyPressed(){
  if(keyCode == 1 UP){
    // if we aren't in the top row then we can move up 
    if (p.playerIndexY > 0){
      p.playerIndexY--;
    }
  }
  else if(keyCode == DOWN){
    if (p.playerIndexY < 10){
      p.playerIndexY++;
    }
  }
  else if(keyCode == LEFT){
    if (p.playerIndexX > 0){
      p.playerIndexX--;
    }
  }
  else if(keyCode == RIGHT){
    if (p.playerIndexX < 10){
      p.playerIndexX++;
    }
  }

}
=======
}

void draw(){
  //Grid grid = new Grid(10, 10);
  //grid.spawn();
  //noLoop();
>>>>>>> a711c942061f4089e28568e1185e07c36c7630ae

void Paused(){
  paused = true;
  
}

<<<<<<< HEAD

  
=======
//void timer() {
//  if (millis() % 1000
>>>>>>> a711c942061f4089e28568e1185e07c36c7630ae
