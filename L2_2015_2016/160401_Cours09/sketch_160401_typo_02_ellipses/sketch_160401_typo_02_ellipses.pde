TypoManager typo;
PVector[] points; // tableau de PVector
float d = 0;

void setup()
{
  size(1600,600);
  typo = new TypoManager(this, "futura.ttf", "Typographie", 5);
  points = typo.listePoints;
}

void draw()
{
  background(200);
  noFill();
  stroke(0,70);
  for (int i=0; i<points.length; i=i+1)
  {
    d = dist( points[i].x, points[i].y, mouseX,mouseY )/5;
    ellipse(points[i].x, points[i].y,d,d);
 }
}