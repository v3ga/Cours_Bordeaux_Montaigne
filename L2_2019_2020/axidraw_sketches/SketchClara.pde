class SketchClara extends Sketch
{
  float largeur = 50; // la valeur est écrasée dans le setup() 
  float hauteur = 20;

  int resx = 15; // nombre de motifs sur l'axe des x
  int resy = 10; // nombre de motifs sur l'axe des y

  float r = 0; // variable qui nous sert pour stocker un nombre aléatoire 


  SketchClara()
  {
    super("Clara");
  }

  void settings()
  {
    super.settings();
    largeur = width / resx;
    hauteur = height / resy;
  }


  void draw()
  {
    float x,y;
    for (y = 0; y < height; y= y+hauteur)
    {
      for (x=0; x < width; x = x+largeur)
      {
        push();
        translate(x, y);

        r = int( random(0, 6) );
        if ( r == 0 )
        {
          carre1 (0, 0, largeur);
        } else if (r == 1)
        {
          carre (0, 0, largeur);
        } else if (r == 2)
        {
          carrecroix (0, 0, largeur);
        } else if (r == 3)
        {
          carrecarre (0, 0, largeur);
        } else if (r==4)
        {
          carretrait (0, 0, largeur);
        } else if (r==5)
        {
          carrelosange(0, 0, largeur);
        }
        pop();
      }
    }
  }
}

void carre1 (float x,float y,float taille)
{
  noFill();
  stroke(0);
  rect(x,y,taille,taille);
  beginShape ();
  vertex (x,y+taille);
  vertex(x+taille,y);
  endShape ();
}

void carre (float x, float y,float taille)
{
  noFill();
  stroke(0);
  rect(x,y,taille,taille);
}

void carrecroix (float x,float y, float taille)
{
  noFill();
  stroke(0);
  beginShape();
  rect(x,y,taille,taille);
  vertex (x,y);
  vertex(x,y+taille);
  vertex (x+taille,y);
  vertex(x,y);
  vertex(x+taille,y+taille);
  vertex(x,y+taille);
  endShape();
}

void carrecarre (float x,float y,float taille)
{
  noFill();
  stroke(0);
  rect(x,y,taille,taille);
  rect (x,y,taille/3,taille/3);
  rect (x,y,taille/1.5,taille/1.5);

}

void carretrait (float x, float y, float taille)
{
  noFill();
  stroke(0);
  beginShape();
  rect(x,y,taille,taille);
  vertex (x,y);
  vertex(x,y+taille);
  vertex (x+taille,y);
  vertex (x,y);
  vertex(x+taille,y+taille);
  vertex(x,y+taille);
  vertex(x,y+taille/2);
  vertex(x+taille/2,y);
  vertex(x+taille,y+taille/2);
  vertex(x+taille/2,y+taille);
  vertex(x,y+taille/2);
  endShape();
}

void carrelosange (float x,float y, float taille)
{
  noFill();
  stroke(0);
  beginShape();
  rect(x,y,taille,taille);
  vertex (x,y);
  vertex(x,y+taille/2);
  vertex(x+taille/2,y);
  vertex(x+taille,y+taille/2);
  vertex(x+taille/2,y+taille);
  vertex(x,y+taille/2);
  endShape();
}
