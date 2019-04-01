Cell[][] grid = new Cell[width/10][height/10];

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
  }
}

void draw() {
  //for cell in grid: iterate
}
