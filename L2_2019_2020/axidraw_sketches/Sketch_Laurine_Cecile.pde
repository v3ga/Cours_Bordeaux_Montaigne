class Sketch_Laurine_Cecile extends Sketch
{
  int resx = 1; // nb de lignes verticales
  int resy = 250; //nb de lignes horizontales
  float largeur=0.0, hauteur=0.0;


  Sketch_Laurine_Cecile()
  {
    super("Laurine_Cecile");
  }

  void setup()
  {
    super.setup();
    largeur = width / resx;    // 40x de large
    hauteur = height / resy;   // 40 y de haut
  }

  void draw()
  {
    float x,y,distance;
    for (y = 0; y < height; y= y+hauteur)
    {
      for (x=0; x < width; x = x+largeur)
      {

        distance = 4.0 * dist(x, y, width/2, height/2); // centre de l'écran

        push();
        translate( x+largeur/2, y+hauteur/2);
        rotate(radians(90 * t + distance));

//        ellipse( 0, hauteur, largeur, 0);
        line( -largeur/2, hauteur, largeur/2, hauteur);
        pop();
      }
    }
  }
}
