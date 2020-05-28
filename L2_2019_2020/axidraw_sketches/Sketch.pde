class Sketch
{
  String id;
  ArrayList<String> names = new ArrayList<String>();
  boolean bDrawBackground = true;
  int nbDrawAccumulationMax = 1;
  boolean enableKeyPressedRecord = true;
  PMatrix2D transfoCurrent = new PMatrix2D();

  Sketch(String id)
  {
    this.id = id;
  }

  void settings()
  {
    size(600, 400);
  }

  void setup()
  {
    background(255);
    if (nbDrawAccumulationMax>1)
    {
      bExportSVG = true;
      bDrawBackground = false;
    }
  }

  void drawBackground()
  {
    if (bDrawBackground)
      background(255);
  }

  void setFillStroke()
  {
    stroke(0);
    noFill();
  }

  void draw()
  {
  }

  void drawBorders()
  {
    float l = 20;

    pushStyle();
    stroke(255, 0, 0);

    line(0, 0, l, 0);
    line(0, 0, 0, l);

    line(width, 0, width-l, 0);
    line(width, 0, width, l);

    line(width, height, width-l, height);
    line(width, height, width, height-l);

    line(0, height, l, height);
    line(0, height, 0, height-l);

    popStyle();
  }

  void record()
  {
    if (bExportSVG)
    {
      beginRecord(SVG, "data/exports/"+getFilename());
      println("beginRecord()");
    }
  }

  void recordEnd()
  {
    if (bExportSVG)
    {
      bExportSVG = false;
      endRecord();
      println("endRecord");
    }
  }

  String getFilename()
  {
    return this.id+".svg";
  }

  void push()
  {
    pushStyle();
    pushMatrix();
  }

  void pop()
  {
    popStyle();
    popMatrix();
  }

  void circle(float x, float y, float d)
  {
    ellipse(x, y, d, d);
  }


  boolean isInsideFrame(PVector p, PVector result)
  {
    boolean is = false;
    g.getMatrix(transfoCurrent);
    transfoCurrent.mult(p, result);
    if (result.x>=0 && result.x<=width && result.y>=0 && result.y<=height)   
      is = true;
    return is;
  }
}
