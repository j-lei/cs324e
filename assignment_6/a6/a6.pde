import java.util.Arrays;

Cell[][] grid;
float baseResidential = 0.00005;
float baseCommercial = 0.07;
float baseIndustrial = 0.02;

void setup() {
  size(1000, 1000);
  background(255);
  int rowSize = width/10;
  int columnSize = height/10;
  grid = new Cell[rowSize][columnSize];
  //make grid
  //each cell is 10x10, so grid is 150 x 150
  for (int i = 0; i < height/10; i++) {
    Cell[] row = new Cell[width/10];
    for (int j = 0; j < width/10; j++) {
      Cell c = new Cell(i, j);
      if (i >= 70 && i <= 85) {
        c.isFilled =  true;
      }
      row[j] = c;
    }
    grid[i] = row;
    print();
  }
  frameRate(2);
  
  fill(100,150,255);
  noStroke();
  rect(700, 0, 150, height);
}

void draw() {
  //for cell in grid: iterate
  for (Cell[] row : grid) {
    for (Cell c : row) {
      c.iterate(baseResidential, baseCommercial, baseIndustrial, grid);
    }
  }
}
