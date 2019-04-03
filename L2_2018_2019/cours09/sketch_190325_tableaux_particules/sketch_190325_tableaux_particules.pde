int nb = 100; // décrit la taille de notre tableau
// Associe à x un tableau de 5 float (nb à virgule)
float[] x = new float[nb];
float[] y = new float[nb];
float[] vx = new float[nb];
float[] vy = new float[nb];
color[] c = new color[nb];
float distance = 0;
float distanceSeuil = 75;

void setup()
{
  size(500, 500);

  for (int i=0; i<nb; i=i+1)
  {
    x[i] = random(0,width);
    y[i] = random(0,height);
    //    y[i] = random(0,height);
    vx[i] = random(-2, 2);
    vy[i] = random(-2, 2);
    //    c[i] = color( random(100,200) );
    c[i] = color( random(100, 200), random(100, 200), random(100, 200) );
  }
}

void draw()
{
  background(200);
  noFill();
  // stroke(0,20);
  for (int i=0; i<nb; i=i+1)
  {
    x[i] = x[i] + vx[i];
    y[i] = y[i] + vy[i];
    if ( x[i] >= width ) // test à droite
    {
      vx[i] = -vx[i];
    }
    if ( x[i] <= 0) // test à gauche
    {
      vx[i] = -vx[i];
    }
    if ( y[i] >= height)
    {
      vy[i] = -vy[i];
    }
    if ( y[i] <= 0)
    {
      vy[i] = -vy[i];
    }
    stroke(c[i], 150);
    //ellipse(x[i], y[i], 25,25 );
  }

  stroke(0);
  for (int i=0; i<nb; i=i+1)
  {
    for (int j=i+1; j<nb; j=j+1)
    {
      distance = dist(x[i], y[i], x[j], y[j]);
      if (distance < distanceSeuil)
        line(x[i], y[i], x[j], y[j]);
    }
  }
}
