float x = 250;
float y = 250;
float vx = random(-2,2);
float vy = random(-2,2);

void setup()
{
  size(500,500);
}

void draw()
{
  x = x + vx;
  y = y + vy;
  if (y < 0)
  {
    vy = -vy;
  }
  else if (y > 500)
  {
    vy = -vy;
  }

  if (x < 0)
  {
    vx = -vx;
  }
  else if (x > 500)
  {
    vx = -vx;
  }


  ellipse(x,y,10,10);
}