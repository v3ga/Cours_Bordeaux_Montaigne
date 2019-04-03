int size = 10;

void setup()
{
  size(500,500);
}

void draw()
{
  background(0);
  noStroke();
  for (int y=0;y<height;y=y+size)
    for (int x=0;x<width;x=x+size){
      fill( 255*noise(x*0.01,y*0.01,float(frameCount)*0.01) );
      rect(x,y,size,size);
    }
}