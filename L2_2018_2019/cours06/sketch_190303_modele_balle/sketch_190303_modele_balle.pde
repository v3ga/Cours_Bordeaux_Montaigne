float xb = 250;
float yb = 250;
float vxb = 1;
float vyb = 2;

void setup()
{
  size(500, 500);
}

void draw()
{
    background(0);

    xb = xb + vxb;
    yb = yb + vyb;

    ellipse(xb,yb,20,20);

    if ( xb >= 500)
    {
      vxb = - vxb;
    }
    if ( xb <= 0)
    {
      vxb = - vxb;
    }
    if ( yb <= 0)
    {
      vyb = - vyb;
    }
    if ( yb >= 500)
    {
      vyb = - vyb;
    }

}
