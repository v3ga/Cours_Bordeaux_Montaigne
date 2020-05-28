class SketchGorka extends Sketch
{
  float posX = 20.0;
  float posY = 20.0;
  float r=0;
  float largeur =0.0;
  boolean stop = false;

  SketchGorka()
  {
    super("Gorka");
  }

  void settings()
  {
    size(400, 600);
  }

  void setup()
  {
    super.setup();
  }

  void draw()
  {
    translate(200, 300);
    //oeil(0, 0);
    r = 0;
    int nb = 10;
    for (int i=0; i<360/nb; i++)
    {
      pushMatrix();
      rotate(radians(r));
      r = r + nb;
      for (float y = 60; y <= 360; y = y + 40)
      {
        largeur = y/3;
        ellipse(posX, y, largeur, largeur);
      }   

/*      if (r >= 360) {
        noLoop();
      }
*/
      carres(0, 0, 200);
      carres(0, 0, 400);
      line(0, 30, 0, 40);
      popMatrix();
    }
  }



  void carres( float a, float b, float taille) 
  {
    rectMode(CENTER);
    rect(a, b, taille, taille);
    rotate(45);
    rect(a, b, taille, taille);
  }

  void oeil (float c, float d) 
  {
    stroke(0);
    noFill();
    ellipse(0, 0, 60, 60);

    noStroke();
    fill(0);
    ellipse(0, 0, 30, 30);

    noStroke(); //reflet
    fill(250);
    noStroke();
    ellipse(10, -10, 15, 15);
  }
}
