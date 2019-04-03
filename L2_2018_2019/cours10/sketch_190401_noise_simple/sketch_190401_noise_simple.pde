

void setup()
{
  size(500,500);
}

void draw()
{
  background(255); // fond blanc
  for( float x=0; x < width; x=x+1 )
  {
    line(x,0, x,250*noise(x*0.0025) );
  }
}
