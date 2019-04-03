// ------------------------------------------
Grid grid = new Grid(10,10)
{
  @Override
  public void draw(float t, int i, int j, float stepx, float stepy)
  {
    pushMatrix();
    translate(0.5*stepx,0.5*stepy);
    float size = map(cos( (float(i)/float(resx)+8*(float)j/float(resy))*TWO_PI + t * TWO_PI),-1,1,stepx/2,0.95*stepx) ;
    fill(0);
    ellipse(0,0,size,size);
    popMatrix();
  }
};

// ------------------------------------------
void render(float t)
{
  grid.draw(t);
}