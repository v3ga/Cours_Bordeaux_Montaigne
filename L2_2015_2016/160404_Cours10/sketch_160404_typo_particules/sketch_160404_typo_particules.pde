TypoManager typo;
PVector[] points; // tableau de PVector

float[] x;
float[] y;
float[] diam;

void setup()
{
  size(1600, 600);
  typo = new TypoManager(this, "futura.ttf", "B", 3);
  points = typo.listePoints;
  x = new float[points.length];
  y = new float[points.length];
  diam = new float[points.length];
  for (int i=0; i<points.length; i=i+1)
  {
    x[i] = points[i].x;
    y[i] = points[i].y;
    diam[i] = 50;
  }
}

void draw()
{
  //background(128);
  // typo.drawP=oints();
  //stroke(0,10);
  //noFill();
  fill(0,10);
  noStroke();
  for (int i=0 ; i < points.length ; i=i+1)
  {
    x[i] = x[i] + random(-5,5);
    y[i] = y[i] + random(-5,5);
    diam[i] = diam[i] - 0.6;
    if (diam[i]>0)
    {
       ellipse( x[i], y[i], diam[i],diam[i] );  
      // line(points[i].x,points[i].y,x[i],y[i]);
    }
  }
  // filter(BLUR,1);
}