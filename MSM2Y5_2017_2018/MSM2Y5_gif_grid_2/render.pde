// ------------------------------------------
Grid grid = new Grid(5,5)
{
  @Override
  public void draw(float t, int i, int j, float stepx, float stepy)
  {
      noFill();
      rectMode(CENTER);
      rect(0.5*stepx,0.5*stepy,t*stepx,t*stepy);
  }
};

// ------------------------------------------
void render(float t)
{
  grid.draw(t);
}