TypoManager typo;
PVector[] points; // tableau de PVector

void setup()
{
  size(600, 600);
  typo = new TypoManager(this, "futura.ttf", "P5", 5);
  points = typo.listePoints;
}

void draw()
{
  background(128);
  stroke(0,30);
  for (int i=0; i<points.length ;i++)
  {
    etoile(points[i].x, points[i].y, mouseX/10);
  }
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