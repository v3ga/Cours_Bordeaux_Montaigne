float taille = 10;
float r = 0.01;
void setup()
{
  size(500, 600);
}

void draw()
{
  background(255); // fond blanc
  noStroke();
  for ( float y=0; y < height; y=y+taille )
    for ( float x=0; x < width; x=x+taille )
    {
      fill( 255 * noise(x*r,y*r,frameCount*0.005)  );
      rect(x,y,taille,taille);
    }
}
