//player variables
float posX = 0;
float posY = 0;

//coin variables
Pac[] dotGenerate;

// enemy variables
Enemy[] enemyGenerate;

// obstacle variables
Obstacle[] obstacleGenerate;

//score counter
int score = 0;

void setup()
{
  posX = width/2;
  posY = height/2;


  ellipseMode (RADIUS);

  size (750, 750);
  background (255);

//creates 5 coins
  dotGenerate = new Pac[5];

  for (int i = 0; i < dotGenerate.length; i += 1)
  {
    dotGenerate[i] = new Pac();
  }
  
//creates 10 enemies
  enemyGenerate = new Enemy[10];
  
  for (int i = 0; i < enemyGenerate.length; i += 1){
    enemyGenerate[i] = new Enemy();
  }
  
//creates 10 obstacles
  obstacleGenerate = new Obstacle[10];
  
  for (int i = 0; i < obstacleGenerate.length; i += 1){
    obstacleGenerate[i] = new Obstacle();
  }
}

void draw()
{
  background(255);

  fill (250, 255, 10);
  //creates the player
  rect(posX, posY, 50, 50);

  for (int i = 0; i < dotGenerate.length; i += 1)
  {
    dotGenerate[i].checkCollision();
    dotGenerate[i].draw();
  }
  for (int i = 0; i < enemyGenerate.length; i += 1){
    enemyGenerate[i].draw();
    enemyGenerate[i].move();
    enemyGenerate[i].checkCollision();
  }
  
  for (int i = 0; i < obstacleGenerate.length; i += 1){
    obstacleGenerate[i].draw();
    obstacleGenerate[i].checkCollision();
  }
  // Displays the score
  fill(0);
  textAlign(RIGHT);
  textSize(50);
  text(score, width - 50, 70);
  
  if (score >= 10) {
    background(255);
    textAlign(CENTER);
    textSize(50);
    fill(250, 255, 10);
    text("You WIN! \n To restart, press 'm'!", width/2, height/2);
    noLoop();
  }
}

void keyPressed() {
     if (key == 'd')
    {
      if (posX <= 700) {
         posX = posX + 10;
      }
    }
    if (key == 'a')
    {
      if (posX >= 0) {
         posX = posX - 10;
      }
    }
    if (key == 'w')
    {
      if (posY >= 0) {
         posY = posY - 10;
      }
    }
    if (key == 's')
    {
      if (posY <= 700) {
         posY = posY + 10;
      }
    }
    if (key == 'm') {
      score = 0;
      loop();
    }
    if (key == 'p') {
      textAlign(CENTER);
      textSize(50);
      text("Game Paused \n Press 'r' to resume \n Press 'q' to quit", width/2, height/2);
      noLoop();
    }
    if (key == 'r') {
      loop();
    }
    if (key == 'q') {
      exit();
    }
}
