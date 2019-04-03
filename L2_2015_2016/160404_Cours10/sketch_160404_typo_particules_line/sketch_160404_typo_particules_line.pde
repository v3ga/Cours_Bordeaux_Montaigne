TypoManager typo;
PVector[] points; // tableau de PVector

float[] x;
float[] y;
float[] diam;

void setup()
{
  size(1600, 600);
  typo = new TypoManager(this, "futura.ttf", "Typographie", 3);
  points = typo.listePoints;
  x = new float[points.length];
  y = new float[points.length];
  diam = new float[points.length];
  for (int i=0; i<points.length; i=i+1)
  {
    x[i] = points[i].x;
    y[i] = points[i].y;
    diam[i] = 20;
  }
}

void draw()
{
  stroke(0,20);
  for (int i=0 ; i < points.length ; i=i+1)
  {
    x[i] = x[i] + random(-5,5);
    y[i] = y[i] + random(-5,5);
    diam[i] = diam[i] - 0.6;
    if (diam[i]>0)
    {
      line(points[i].x,points[i].y,x[i],y[i]);
    }
  }
}