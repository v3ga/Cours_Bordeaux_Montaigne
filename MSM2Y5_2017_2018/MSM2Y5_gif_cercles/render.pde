color from = color(200,0,0);
color to = color(0,0,200);

Ring ring = new Ring(250,250,150,50) // x,y,rayon,nb
{
  @Override
  public void draw(float t, float angle)
  {
    noFill();
    stroke( lerpColor(from,to, map(angle,0,TWO_PI,0,1)) );
    ellipse(0,0,100*sin(angle/2 + t*TWO_PI),100*sin(angle + t*TWO_PI));
  }
};

// ------------------------------------------
void render(float t)
{
   translate(250, 250);
   rotate( t*TWO_PI/ring.nb) ;
   ring.draw(t);
}