class Particule
{
  float x, y, vx, vy, speed;
  float[] xh, yh;
  float angle;

  Particule(float x_, float y_)
  {
    this.x = x_;
    this.y = y_;
    speed = random(5,10);
  }

  void update()
  {
    angle = radians( 360.0 * noise(x*0.0010, y*0.01, frameCount * 0.01) );
    vx = speed_x*cos( angle );
    vy = speed_y*sin( angle );
    x += vx;
    y += vy;

    if ( x < 0 ) x = width; 
    else if ( x > width) x = 0;
    if ( y < 0 ) y = height;
    else if (y > height) y = 0;
    
    if (xh == null)
    {
      xh = new float[1];
      xh[0] = x;
    }
    else
    {
      xh = append(xh, x);
    }
    if (yh == null)
    {
      yh = new float[1];
      yh[0] = y;
    
    }
    else
    {
      yh = append(yh, y);
    }
  }

  void draw()
  {
    if (xh.length >= 2 && yh.length >=2)
    {
      int nb = xh.length;
      for (int i=0;i<nb -1; i++)
      {
        if (dist(xh[i],yh[i],xh[i+1],yh[i+1])>=100.0)
          continue;
        line(xh[i],yh[i],xh[i+1],yh[i+1]);
      }
    }
  }

}
