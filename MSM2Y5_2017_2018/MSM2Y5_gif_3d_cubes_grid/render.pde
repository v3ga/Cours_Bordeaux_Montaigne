Grid grid = new Grid(8,8)
{
  @Override
  public void draw(float t, int i, int j, float stepx, float stepy)
  {
    translate(stepx/2, stepy/2);
    rotate( t*TWO_PI );
    rotateY( t*TWO_PI );
    noFill();
    strokeWeight(2);
    box( stepx/2);
  }  
};

// ------------------------------------------
void render(float t)
{
  grid.draw(t);
}