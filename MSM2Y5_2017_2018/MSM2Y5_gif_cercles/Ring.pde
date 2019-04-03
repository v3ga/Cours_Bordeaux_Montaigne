class Ring
{
  float px = 0, py = 0;
  float radius = 0;
  int nb = 0;

  Ring(float px, float py, float radius, int nb)
  {
    this.px = px;
    this.py = py;
    this.radius = radius;
    this.nb = nb;
  }


  public void draw(float t)
  {
    float x=0, y=0, angle=0;
    for (int i=0; i<nb; i++)
    {
      pushMatrix();
//      translate(px, py);
      x = radius*cos(angle);
      y = radius*sin(angle);
      translate(x, y);
      this.draw(t, angle);      
      popMatrix();

      angle += TWO_PI / float(nb);
    }
  }

  public void draw(float t, float angle)
  {
  }
}