class SketchGrid extends Sketch
{
  SketchGrid()
  {
    super("Grid");
  }

  void settings()
  {
    size(297*3,210*3);
  }


  void draw()
  {
    stroke(255, 0, 0);
    for (int j=0; j<2; j++)
      for (int i=0; i<2; i++)
      {
        float x = i*width/2.0;
        float y = j*height/2.0;
        rect(x, y, width/2.0, height/2.0);
      }

    /*
    rect(0,0,width-1,height-1);
     for (int i=0;i<3;i++)
     {
     float x = (i+1)*width/3;
     line(x,0,x,height);  
     }
     
     for (int i=0;i<3;i++)
     {
     float y = (i+1)*height/3;
     line(0,y,width,y);  
     }
     */
  }
}
