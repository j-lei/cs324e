import java.util.Arrays;

Cell[][] grid = new Cell[width/10][height/10];
float baseResidential = 0.05;
float baseCommercial = 0.07;
float baseIndustrial = 0.02;

void setup() {
  size(1500, 1500);
  
  //make grid
  //each cell is 10x10, so grid is 150 x 150
  for (int i = 0; i < height/10; i++) {
    Cell[] row = new Cell[width/10];
    for (int j = 0; j < width/10; j++) {
      Cell c = new Cell(j, i);
      row[j] = c;
    }
    grid[i] = row;
  }
}

void draw() {
  //for cell in grid: iterate
  for (Cell[] row : grid) {
    for (Cell c : row) {
      c.iterate(baseResidential, baseCommercial, baseIndustrial, grid);
    }
  }
}
