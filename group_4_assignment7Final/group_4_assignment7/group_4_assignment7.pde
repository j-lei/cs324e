// pacman variables
float curX = 0;
float curY = 0;
float pacmanRadius = 50;
//float direction = 0;

// dot variables
Dot[] dotGenerate;

Dot dot1;

int score = 0;

void setup()
{
  curX = width/2;
  curY = height/2;


  ellipseMode (RADIUS);

  size (750, 750);
  background (0, 0, 255);

  dot1 = new Dot ();

  dotGenerate = new Dot[5];

  for (int i = 0; i < dotGenerate.length; i = i + 1)
  {
    dotGenerate[i] = new Dot();
  }
}

void draw()
{
  background(0, 0, 255);

  fill (250, 255, 10);
  rect(curX, curY, pacmanRadius, pacmanRadius);

  for (int i = 0; i < dotGenerate.length; i = i + 1)
  {
    dotGenerate[i].checkCollision();
    dotGenerate[i].draw();
  }

  if (keyPressed) {
    if (key == 'd')
    {
      curX = curX + 3;
    }
    if (key == 'a')
    {
      curX = curX - 3;
    }
    if (key == 'w')
    {
      curY = curY - 3;
    }
    if (key == 's')
    {
      curY = curY + 3;
    }
  }
  // Draw score
  textAlign(RIGHT);
  textSize(50);
  text(score, width - 50, 70);
  
  if (score >= 10) {
    background(0);
    textSize(50);
    text("You Win!", width/2, height/2);
    text("To restart, press the m key!", (width/2)+50, (height/2)+50);
    noLoop();
  }
}
