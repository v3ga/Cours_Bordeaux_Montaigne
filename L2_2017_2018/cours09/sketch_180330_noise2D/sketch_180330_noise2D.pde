void setup()
{
  size(500,500);
  noLoop();
}

void draw()
{
  background(0);
  for (int y=0;y<height;y++)
    for (int x=0;x<width;x++){
      stroke( 255*noise(x*0.01,y*0.01) );
      point(x,y);
    }
}