Grid [][] grid;

void setup(){
  size(1500, 1500);
  background(128);
  
  int rowNum = width/15;
  int colNum = height/15;
  grid = new Grid[rowNum][colNum];
  for (int i = 0; i < rowNum; i++){
    Grid[] row = new Grid[colNum];
    for (int j = 0; j < colNum; j++){
      Grid g = new Grid(i, j);
      row[j] = g;
    }
    grid[i] = row;
    print();
  }
  
}

void draw(){
  //for (Grid[] row : grid){
  //  for (Grid g : row){
  //    g.iterate();
  //  }
  //}

}
