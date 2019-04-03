void setup()
{
  size(500, 500);
  background(255);
}

void draw()
{
  etoile(100,200, 100);
  etoile(400,30, 50);
}

// Définition d'un gestionnaire ou d'une fonction
void etoile(float x, float y, float rayon)
{
  pushMatrix();
  translate(x, y);
  for (int i = 0; i < 10; i=i+1)
  {
    line( 0, 0, rayon, 0 );
    rotate( radians(36) );
  }
  popMatrix();
}