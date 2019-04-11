class LineMouse
{
  List<Vec2D> points=new ArrayList<Vec2D>();
  boolean showSpline = true;
  boolean showLine = true;
  Vec2D[] handles;
  Spline2D spline;
  LineStrip2D vertices;

  void update()
  {
    int numP=points.size();
    Vec2D currP=new Vec2D(mouseX, mouseY);
    if (numP>0) {
      // check distance to previous point
      Vec2D prevP=(Vec2D)points.get(numP-1);
      if (currP.distanceTo(prevP)>sampleDistance) {
        points.add(currP);
      }
    } else {
      // add first point regardless
      points.add(currP);
    }
    numP=points.size();
  if (showLine) {
    stroke(255,0,0,255);
    gfx.lineStrip2D(points);
  }
    
    handles=new Vec2D[numP];
  for(int i=0; i<numP; i++) 
  {
    Vec2D p=points.get(i);
    handles[i]=p;
  }
  
    if (numP>3 && showSpline) 
    {
      
      // pass the points into the Spline container class
      spline=new Spline2D(handles);
      // sample the curve at a higher resolution
      // so that we get extra 8 points between each original pair of points
       vertices=spline.toLineStrip2D(8);
      // draw the smoothened curve
    }
  }
  
  void draw()
  {
    if (vertices !=null)
    {
      stroke(0,0,0,255);
      gfx.lineStrip2D(vertices);
    }
}
}
