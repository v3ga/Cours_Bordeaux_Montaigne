float x = 250;
float y = 250;
float vx = 0.0;
float vy = 0.0;
float angle = 0.0;

void setup()
{
  size(500,500);
}

void draw()
{
  angle = 360.0 * noise(x*0.01,y*0.01);
  vx = cos( radians(angle) );
  vy = sin( radians(angle) );
  x = x+vx;
  y = y+vy;
  if ( x < 0 ) x = 500; 
  else if ( x > 500) x = 0;
  if ( y < 0 ) y = 500;
  else if (y > 500) y = 0;
  noStroke();
  fill(0,10);
  ellipse(x,y,5,5);
}