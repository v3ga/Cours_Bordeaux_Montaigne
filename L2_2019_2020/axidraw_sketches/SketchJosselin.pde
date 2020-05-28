class SketchJosselin extends Sketch
{
  float largeur, hauteur;
  float resX = 28, resY = 14;
  //Translation Z
  float alpha = 0;

  //Rotation
  float tourX = 0, tourY = 0;
  float tourAlpha = 0, tourBeta = 0;


  SketchJosselin()
  {
    super("Josselin");
  }

  void settings()
  {
    size(800, 400, P3D);
    largeur = width/resX;
    hauteur = height/resY;
  }


  void draw()
  {
    for (float y = 75; y < height-75; y= y+hauteur)
    {
      for (float x= 150; x < width-150; x = x+largeur)
      {
        pushMatrix();

        alpha = dist(x, y, mouseX, mouseY);
        float beta = map(alpha, 0, 200, -150, 0);
        translate(x, y, beta);

        tourX = mouseY;
        tourY = mouseX;
        tourAlpha = map(tourX, 0, 400, 0, PI);
        tourBeta = map(tourY, 0, 800, 0, PI);

        rotateX(tourAlpha);
        rotateY(tourBeta);

        box(largeur/2);

        popMatrix();
      }
    }
  }

  void record()
  {
    if (bExportSVG)
      beginRaw(PDF, getFilename());
  }

  void recordEnd()
  {
    if (bExportSVG)
    {
      bExportSVG = false;
      endRaw();
    }
  }

  String getFilename()
  {
    return this.id+".pdf";
  }
}
