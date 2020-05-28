class Sketch_Zoe_Eva extends Sketch
{
  // Paramètres de la grille
  int resx = 40;
  int resy = 40;
  float largeur=0;
  float hauteur=0;
  float distance=0;
  float vitesse=10;

  PVector pRect = new PVector();
  PVector pRectTransfo = new PVector();

  Sketch_Zoe_Eva()
  {
    super("Zoe_Eva");
  }

  void settings()
  {
    super.settings();
    largeur = width / resx;
    hauteur = height / resy;
  }



  void draw()
  {
    float x, y;
    for (y = 0; y < height; y= y+hauteur)
    {
      for (x=0; x < width; x = x+largeur)
      {
        push();
        translate(x+largeur/2, y+hauteur/2);
        rotate(radians(90));
        line(-largeur/2, 0, largeur/2, 0);
        rotate(radians(90));
        line(-largeur/2, 0, largeur/2, 0);
        pop();

        distance = 1.7*dist(x, y, width/2, height/2);
        push();
        strokeWeight(1);
        translate(x+largeur/2, y+height/2);
        rotate(radians(vitesse*t+distance));
        pRect.set(20, 20);
        if (isInsideFrame(pRect,pRectTransfo))
          rect(pRect.x, pRect.y, 15, 15);
        pop();
      }
    }
  }

}
