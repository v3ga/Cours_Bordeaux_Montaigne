class Grid
{
  int resx,resy;

  Grid(int resx, int resy)
  {
    this.resx = resx;
    this.resy = resy;
  }

  public void draw(float t)
  {
    float stepx = float(width) / float(resx);    
    float stepy = float(height) / float(resy);    

    float x=0,y=0;
    int i,j;
    for (j=0;j<resy;j++)
    {
      x = 0;
      for (i=0;i<resx;i++)
      {
        pushMatrix();
        translate(x,y);
        this.draw(t,i,j,stepx,stepy);      
        popMatrix();
        x+=stepx;
      }
      y+=stepy;
    }
  }

  public void draw(float t, int i, int j, float stepx, float stepy)
  {
  }

}