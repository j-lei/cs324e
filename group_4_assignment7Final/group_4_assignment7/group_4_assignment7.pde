// pacman variables
float posX = 0;
float posY = 0;
//float direction = 0;

// dot variables
Pac[] dotGenerate;

// enemy variables
Enemy[] enemyGenerate;

// obstacle variables
Obstacle[] obstacleGenerate;

int score = 0;

void setup()
{
  posX = width/2;
  posY = height/2;


  ellipseMode (RADIUS);

  size (750, 750);
  background (255);

  dotGenerate = new Pac[5];

  for (int i = 0; i < dotGenerate.length; i += 1)
  {
    dotGenerate[i] = new Pac();
  }
  
  enemyGenerate = new Enemy[10];
  
  for (int i = 0; i < enemyGenerate.length; i += 1){
    enemyGenerate[i] = new Enemy();
  }
  
  obstacleGenerate = new Obstacle[10];
  
  for (int i = 0; i < obstacleGenerate.length; i += 1){
    obstacleGenerate[i] = new Obstacle();
  }
}

void draw()
{
  background(255);

  fill (250, 255, 10);
  rect(posX, posY, 50, 50);

  for (int i = 0; i < dotGenerate.length; i += 1)
  {
    dotGenerate[i].checkCollision();
    dotGenerate[i].draw();
  }
  for (int i = 0; i < enemyGenerate.length; i += 1){
    enemyGenerate[i].draw();
    enemyGenerate[i].move();
  }
  
  for (int i = 0; i < obstacleGenerate.length; i += 1){
    obstacleGenerate[i].draw();
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
    text("You Win! \n To restart, press the m key!", width/2, height/2);
    noLoop();
  }
}

void keyPressed() {
     if (key == 'd')
    {
      posX = posX + 10;
    }
    if (key == 'a')
    {
      posX = posX - 10;
    }
    if (key == 'w')
    {
      posY = posY - 10;
    }
    if (key == 's')
    {
      posY = posY + 10;
    }
    if (key == 'm') {
      score = 0;
      loop();
    }
}
