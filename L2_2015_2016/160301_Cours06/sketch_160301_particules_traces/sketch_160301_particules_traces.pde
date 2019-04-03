int nb = 100; // variable qui stocke le nb de part.

float[] x = new float[nb];
float[] y = new float[nb];
float[] vx = new float[nb];
float[] vy = new float[nb];


void setup()
{
  size(500, 500);
  for (int i=0; i < nb; i=i+1)
  {
    x[i] = random(0,500);
    y[i] = random(0,500);
    vx[i] = random(-2, 2);
    vy[i] = random(-2, 2);
  }
}

void draw()
{
  for (int i=0; i < nb; i=i+1)
  {
    x[i] = x[i] + vx[i];
    y[i] = y[i] + vy[i];
    if ( x[i] > 500)
    {
      vx[i] = -vx[i];
    }    
    if ( x[i] < 0 )
    {
      vx[i] = -vx[i];
    }

    if ( y[i] > 500)
    {
      vy[i] = -vy[i];
    }    
    if ( y[i] < 0 )
    {
      vy[i] = -vy[i];
    }

    //ellipse(x[i], y[i], 10, 10);
  }

  stroke(0,20);
  for (int i = 0; i < nb ; i=i+1)
  {
    for (int j = i+1; j < nb ; j=j+1)
    {
      if ( dist(x[i],y[i],x[j],y[j]) < 50 )
      {
          line( x[i],y[i],x[j],y[j] );      
      }
    }
  
  }
}