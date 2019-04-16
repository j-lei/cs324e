// pacman variables
float posX = 0;
float posY = 0;
//float direction = 0;

// dot variables
Dot[] dotGenerate;

Dot dot1;

int score = 0;

void setup()
{
  posX = width/2;
  posY = height/2;


  ellipseMode (RADIUS);

  size (750, 750);
  background (0);

  dot1 = new Dot ();

  dotGenerate = new Dot[5];

  for (int i = 0; i < dotGenerate.length; i = i + 1)
  {
    dotGenerate[i] = new Dot();
  }
}

void draw()
{
  background(0);

  fill (250, 255, 10);
  rect(posX, posY, 50, 50);

  for (int i = 0; i < dotGenerate.length; i = i + 1)
  {
    dotGenerate[i].checkCollision();
    dotGenerate[i].draw();
  }
  // Displays the score
  textAlign(RIGHT);
  textSize(50);
  text(score, width - 50, 70);
  
  if (score >= 10) {
    background(0);
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
