float[] x = new float[5];

void setup()
{
  size(500,500);
  for (int i=0; i<5; i=i+1) // i prend les valeurs 0/1/2/3/4
  {
    x[i] = random(0,width);
  }
}

void draw()
{
  for (int i=0; i<5; i=i+1) // i prend les valeurs 0/1/2/3/4
  {
    ellipse( x[i],height/2,50,50 );
  }
}
