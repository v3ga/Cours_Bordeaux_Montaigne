import processing.svg.*;

int nb = 70; //décrit la taille du tableau 
boolean bExport = false;

// Associe à x un tableai de 5 float (nb à virgule)
float[] x = new float[nb];
float[] y = new float[nb];
float[] vx = new float[nb];
float[] vy = new float[nb];
color[] c = new color[nb];
float distanceSeuil = 35;
float angle = 0.0;


void setup()
{
  size(420, 600);
  for (int i=0; i<nb; i=i+1)
  {
    //x[i] = width/2;
    x[i] = random(0, 90);
    //y[i] = height/2;
    y[i] = random(0, 600);
    vx[i] = random(-1,1);
    vy[i] = random(-1,1);
    c[i] = color( 0 );
  }
}

void draw()
{
  background(255);
  if (bExport)
  {
    beginRecord(SVG, "export.svg");
  }
  noFill();
  stroke(0);
  for (int i=0; i<nb; i=i+1)
  {
    x[i] = x[i] +vx [i];
    y[i] = y[i] + vy[i];
    if (x[i]>=90) // test à droite
    {
      vx[i]=-vx[i];
    }
    if (x[i]<=0) // test à gauche 
    {
      vx[i]=-vx[i];
    }
    if (y[i]>=0)
    {
      vy[i]=-vy[i];
    }
    if (y[i]<=600)
    {
      vy[i]=-vy[i];
    }
    stroke(c[i]);
  }

  for (int i=0; i<nb; i=i+1)
  {
    for (int j=i+1; j<nb; j=j+1)
    {
      if (dist(x[i], y[i], x[j], y[j]) < distanceSeuil)
      {
        line( x[i], y[i], x[j], y[j] );
      }
    }
  }

  if (bExport)
  {
    bExport = false;
      endRecord();
  }


}


void keyPressed()
{
  //   saveFrame("export.pdf");
  bExport = true;
}
