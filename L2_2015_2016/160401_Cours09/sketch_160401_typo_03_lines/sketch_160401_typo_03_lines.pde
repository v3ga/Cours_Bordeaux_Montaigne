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
  typo.drawPoints();
}