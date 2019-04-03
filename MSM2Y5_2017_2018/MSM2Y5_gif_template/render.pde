// ------------------------------------------
void render(float t)
{
  fill(255,255,0);
  strokeWeight(5);
  for ( float y=50; y<=450; y = y + 100)
  {
    for ( float x=50; x<=450; x = x + 100 )
    {
      pushMatrix();
      translate(x, y);
      rotate( radians(t*360.0) );
      rect(0,0, 200*cos(radians(360*t+x/4+y*2)) ,130*cos(radians(360*t+x/4+y*2)));
      popMatrix();
    }
  }
}