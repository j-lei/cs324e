Cell[][] grid;
float baseResidential = 0.00005;
float baseCommercial = 0.007;
float baseIndustrial = 0.02;

void setup() {
  size(1500, 1500);
  background(200, 255, 170);
  
  int rowNum = width/15;
  int columnNum = height/15;
  grid = new Cell[rowNum][columnNum];
  //each cell is 15x15, so grid is 100 x 100
  for (int i = 0; i < rowNum; i++) {
    Cell[] row = new Cell[columnNum];
    for (int j = 0; j < columnNum; j++) {
      Cell c = new Cell(i, j);
      if (i >= 70 && i <= 85) {
        c.isFilled = true;
        c.isWater = true;
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
