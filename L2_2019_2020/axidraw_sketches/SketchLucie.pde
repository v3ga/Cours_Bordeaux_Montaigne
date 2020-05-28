class SketchLucie extends Sketch
{
  float largeur = 9; 
  float hauteur = 9;
  int resx = 20; 
  int resy =13; 
  float r = 0; 

  SketchLucie()
  {
    super("Lucie");
  }

  void setup()
  {
    super.setup();
    largeur = width / resx;
    hauteur = height / resy;
    noLoop();
  }


  void draw()
  {
    float x, y;
    for (y = 0; y < height; y= y+hauteur)
    {
      for (x=0; x < width; x = x+largeur)
      {
        r = int( random(0, 6) );
        if ( r == 0 )
        {
          ark4(x, y, x, y);
          ark13(x-5, y, x, y);
          ark7(x, y, x, y);
          ark11(x-5, y, x, 0);
        } else if (r == 1)
        {
          ark8(x, y, x, y);
          lignes(x, y, x, y-15);
          lignes2(x-15, y, x-15, y);
        }/* else if (r == 2)
        {
          ark5(x, y, x+hauteur, 0);
          lignes(x, y, x, y);
          ark4(x, y, x, y);
          ark8(x, y, x, y);
          ark11(x-5, y, x, y);
        } else if (r == 3)
        {
          ark6(x, y, x, y+hauteur);
          ark8(x, y, x, y);
          ark3(x, y-15, x, y);
          ark3(x, y, x, y);
        } else if (r == 4)
        {
          ark9(x+15, y, x, y);
          ark12(x, y, x, y);
          ark13(x-5, y, x, y);
          ark7(x-15, y, x+largeur-15, y+hauteur);  
          ark4(x, y, x, y);
        } else if (r == 5)
        {
          ark4(x, y, x, y);
          ark9(x, y, x, y+hauteur);
          ark8(x, y, x, y);
          ark3(x, y, x, y);
        }*/
      }
    }
  }


  void lignes(float x, float y, float x2, float y2)
  {
    line(x, y, x2, y2);
    line(x, y, x2, y2+hauteur/2);
    line(x+5, y, x2+5, y2+hauteur/2);
    line(x+10, y, x2+10, y2+hauteur/2);
    line(x+5/2, y, x2+5/2, y2+hauteur/2);
    line(x+5+5/2, y, x2+5+5/2, y2+hauteur/2);
    line(x+10+5/2, y, x2+10+5/2, y2+hauteur/2);
    line(x+15, y, x2+15, y2+hauteur/2);
  }

  void lignes2(float x, float y, float x2, float y2)
  {
    line(x, y, x2, y2);
    line(x, y, x2+largeur, y2);
    line(x, y+5, x2+largeur, y2+5);
    line(x, y+10, x2+largeur, y2+10);
    line(x, y+5/2, x2+largeur, y2+5/2);
    line(x, y+5+5/2, x2+largeur, y2+5+5/2);
    line(x, y+10+5/2, x2+largeur, y2+10+5/2);
    line(x, y+15, x2+largeur, y2+15);
  }

  void lignes3(float x, float y, float x2, float y2)
  {
    line(x, y, x2, y2);
    line(x, y, x2+largeur/2, y2);
    line(x, y+5, x2+largeur/2, y2+5);
    line(x, y+10, x2+largeur/2, y2+10);
    line(x, y+5/2, x2+largeur/2, y2+5/2);
    line(x, y+5+5/2, x2+largeur/2, y2+5+5/2);
    line(x, y+10+5/2, x2+largeur/2, y2+10+5/2);
    line(x, y+15, x2+largeur/2, y2+15);
  }

  void ark(float x, float y, float xrayon1, float xrayon2, float debut, float fin) 
  {
    rectMode(CENTER);
    noFill();
    arc(x, y, 30, 30, HALF_PI*3, PI);
    arc(x, y, 25, 25, HALF_PI*3, PI);
    arc(x, y, 20, 20, HALF_PI*3, PI);
    arc(x, y, 15, 15, HALF_PI*3, PI);
    arc(x, y, 10, 10, HALF_PI*3, PI);
    arc(x, y, 5, 5, HALF_PI*3, PI);
    arc(x, y, 1, 1, HALF_PI*3, PI);
  }

  void ark3(float x, float y, float xrayon1, float xrayon2) 
  {
    rectMode(CORNER);
    noFill();
    arc(x, y, 30, 30, TWO_PI, HALF_PI);
    arc(x, y, 25, 25, TWO_PI, HALF_PI);
    arc(x, y, 20, 20, TWO_PI, HALF_PI);
    arc(x, y, 15, 15, TWO_PI, HALF_PI);
    arc(x, y, 10, 10, TWO_PI, HALF_PI);
    arc(x, y, 5, 5, TWO_PI, HALF_PI);
    arc(x, y, 1, 1, TWO_PI, HALF_PI);
  }

  void ark4(float x, float y, float xrayon1, float xrayon2) 
  {
    rectMode(CORNER);
    noFill();
    arc(x, y, 30, 30, PI + HALF_PI, TWO_PI);
    arc(x, y, 25, 25, PI +HALF_PI, TWO_PI);
    arc(x, y, 20, 20, PI + HALF_PI, TWO_PI);
    arc(x, y, 15, 15, PI + HALF_PI, TWO_PI) ;
    arc(x, y, 10, 10, PI + HALF_PI, TWO_PI);
    arc(x, y, 5, 5, PI + HALF_PI, TWO_PI);
    arc(x, y, 1, 1, PI + HALF_PI, TWO_PI);
  }

  void ark5(float x, float y, float xrayon1, float xrayon2) 
  {
    rectMode(CORNER);
    arc(x, y, 30, 30, PI, 0);
    arc(x, y, 25, 25, PI, 0);
    arc(x, y, 20, 20, PI, 0);
    arc(x, y, 15, 15, PI, 0) ;
    arc(x, y, 10, 10, PI, 0);
    arc(x, y, 5, 5, PI, 0);
    arc(x, y, 1, 1, PI, 0);
  }

  void ark6(float x, float y, float xrayon1, float xrayon2) 
  {
    rectMode(CORNER);
    arc(x, y, 30, 30, 0, PI);
    arc(x, y, 25, 25, 0, PI);
    arc(x, y, 20, 20, 0, PI);
    arc(x, y, 15, 15, 0, PI) ;
    arc(x, y, 10, 10, 0, PI);
    arc(x, y, 5, 5, 0, PI);
    arc(x, y, 1, 1, 0, PI);
  }

  void ark7(float x, float y, float xrayon1, float xrayon2) 
  {
    rectMode(CORNER);
    arc(x, y, 30, 30, 0, HALF_PI);
    arc(x, y, 25, 25, 0, HALF_PI);
    arc(x, y, 20, 20, 0, HALF_PI);
    arc(x, y, 15, 15, 0, HALF_PI); 
    arc(x, y, 10, 10, 0, HALF_PI);
    arc(x, y, 5, 5, 0, HALF_PI);
    arc(x, y, 1, 1, 0, HALF_PI);
  }

  void ark8(float x, float y, float xrayon1, float xrayon2) 
  {
    rectMode(CORNER);
    arc(x, y, 30, 30, PI, PI+HALF_PI);
    arc(x, y, 25, 25, PI, PI+HALF_PI);
    arc(x, y, 20, 20, PI, PI+HALF_PI);
    arc(x, y, 15, 15, PI, PI+HALF_PI) ;
    arc(x, y, 10, 10, PI, PI+HALF_PI);
    arc(x, y, 5, 5, PI, PI+HALF_PI);
    arc(x, y, 1, 1, PI, PI+HALF_PI);
  }

  void ark9(float x, float y, float xrayon1, float xrayon2) 
  {
    rectMode(CORNER);
    arc(x, y, 30, 30, HALF_PI, PI);
    arc(x, y, 25, 25, HALF_PI, PI);
    arc(x, y, 20, 20, HALF_PI, PI);
    arc(x, y, 15, 15, HALF_PI, PI); 
    arc(x, y, 10, 10, HALF_PI, PI);
    arc(x, y, 5, 5, HALF_PI, PI);
  }

  void ark11(float x, float y, float xrayon1, float xrayon2) 
  {
    rectMode(CORNER);
    arc(x-largeur/4, y, 25, 30, 0, HALF_PI);
    arc(x-largeur/4-3, y, 25, 30, 0, HALF_PI); 
    arc(x-largeur/4-6+1/2, y, 25, 30, 0, HALF_PI);
    arc(x-largeur/4-8, y, 25, 30, 0, HALF_PI);
    arc(x-largeur/4-10, y, 25, 30, 0, HALF_PI);
    arc(x-largeur/4-12-1/2, y, 25, 30, 0, HALF_PI);
  }

  void ark12(float x, float y, float xrayon1, float xrayon2) 
  {
    rectMode(CORNER);
    arc(x, y, 30, 30, PI + HALF_PI, TWO_PI);
    arc(x, y, 25, 25, PI +HALF_PI, TWO_PI);
    arc(x, y, 20, 20, PI + HALF_PI, TWO_PI);
    arc(x, y, 15, 15, PI + HALF_PI, TWO_PI) ;
    arc(x, y, 10, 10, PI + HALF_PI, TWO_PI);
    arc(x, y, 5, 5, PI + HALF_PI, TWO_PI);
  }

  void ark13(float x, float y, float xrayon1, float xrayon2) 
  {
    rectMode(CORNER);
    arc(x-largeur/4, y, 25, 30, PI + HALF_PI, TWO_PI);
    arc(x-largeur/4-3, y, 25, 30, PI +HALF_PI, TWO_PI);
    arc(x-largeur/4-6+1/2, y, 25, 30, PI + HALF_PI, TWO_PI);
    arc(x-largeur/4-8, y, 25, 30, PI + HALF_PI, TWO_PI) ;
    arc(x-largeur/4-10, y, 25, 30, PI + HALF_PI, TWO_PI);
    arc(x-largeur/4-12-1/2, y, 25, 30, PI + HALF_PI, TWO_PI);
  }
}
