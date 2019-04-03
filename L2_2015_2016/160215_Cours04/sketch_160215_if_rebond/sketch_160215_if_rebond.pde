float x = 250;
float y = 250;
float vx = 3; // vitesse de déplacement en x
float vy = 2; // vitesee de déplacement en y

void setup()
{
  size(500,500);
}

void draw()
{
  x = x+vx;
  y = y+vy;
  if ( x > 500)
  {
    vx = -vx;
  }
  if ( x < 0 )
  {
    vx = -vx;
  }
  if (y > 500)
  {
    vy = -vy;
  }
  if (y<0)
  {
    vy = -vy;
  }
  ellipse(x,y,20,20);
}

void mousePressed()
{
  x = 250;
  y = 250;
  vx = random(-3,3);
  vy = random(-3,3);
  fill( random(255) );
}