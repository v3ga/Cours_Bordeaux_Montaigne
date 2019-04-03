int nb = 2000; // nombre de billes total
float[] x = new float[nb];
float[] y = new float[nb];
float[] vx = new float[nb];
float[] vy = new float[nb];
float angle = 0.0;

void setup()
{
  size(500, 600);
  for (int i=0; i<nb; i=i+1)
  {
    x[i] = random(0, width);
    y[i] = random(0, height);
  }
}

void draw()
{
  noStroke();
  fill(0, 5);
  for (int i=0; i<nb; i=i+1)
  {
    angle = 360.0 * noise(x[i]*0.01, y[i]*0.01, frameCount * 0.01);
    vx[i] = cos( radians(angle) );
    vy[i] = sin( radians(angle) );
    x[i] = x[i] + vx[i];
    y[i] = y[i] + vy[i];

    if ( x[i] < 0 ) x[i] = width; 
    else if ( x[i] > width) x[i] = 0;
    if ( y[i] < 0 ) y[i] = height;
    else if (y[i] > height) y[i] = 0;    


    ellipse( x[i], y[i], 1, 1 );
  }
}
