//commercial icons made by SimpleIcon from "https://www.flaticon.com/"   
//Flaticon is licensed by "http://creativecommons.org/licenses/by/3.0/"
//house icons are from pngtree: https://png.pngtree.com/svg/20161223/127738f39e.svg

Cell[][] grid;
float baseResidential = 0.00005;
float baseCommercial = 0.007;
float baseIndustrial = 0.02;

PShape house;

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
      //delineate river
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
  
  //draw river
  fill(100,150,255);
  noStroke();
  rect(1055, 0, 225, height);
  
  house = loadShape("house.svg");
}

void draw() {
  //for cell in grid: iterate
  for (Cell[] row : grid) {
    for (Cell c : row) {
      c.iterate(baseResidential, baseCommercial, baseIndustrial, grid, house);
    }
  }
}
