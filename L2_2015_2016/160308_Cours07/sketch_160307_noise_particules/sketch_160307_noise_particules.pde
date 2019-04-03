int nb = 1000; // variable qui stocke le nb de part.

float[] x = new float[nb];
float[] y = new float[nb];
float[] vx = new float[nb];
float[] vy = new float[nb];

float angle = 0.0;
float coeff = 0.001;

void setup()
{
  size(500, 500);

  for (int i=0; i < nb; i=i+1)
  {
    x[i] = random(0,500);
    y[i] = random(0,500);
    vx[i] = 0;
    vy[i] = 0;
  }
}
void draw()
{
  //background(255);
  for (int i=0; i<nb ; i=i+1)
  {
    coeff = mouseX / 5000.0;
    angle = 6.28 * noise( coeff*x[i], coeff*y[i] ) ;
    vx[i] = 2*cos(  angle  );
    vy[i] = 2*sin(  angle  );
  
    x[i] = x[i] + vx[i];
    y[i] = y[i] + vy[i];
    
    if (x[i] < 0)
    {
      x[i] = 500;
    }
    
    if (x[i]>500)
    {
      x[i] = 0;
    }
    
    if (y[i]<0)
    {
      y[i] = 500;
    }
    
    if (y[i]>500)
    {
      y[i] = 0;
    }
    
    
    noStroke();
    fill(0,30);
    ellipse(x[i],y[i],2,2);
  }

//  if (frameCount%100 == 0)
//    filter(ERODE);
}

void mousePressed()
{
  background(200);
  for (int i=0; i<nb ; i++)
  {
    x[i] = random(0,500);
    y[i] = random(0,500);
  }
}