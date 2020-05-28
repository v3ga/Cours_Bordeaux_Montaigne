class SketchNolwen extends Sketch
{

  float largeur = 50;
  float hauteur = 60;
  int resx = 50;
  int resy = 20;
  float r = 0;

  int nb = 5;
  float[] positionx = new float[nb];
  float[] positiony = new float[nb];
  float[] vitessex = new float[nb];
  float[] vitessey = new float[nb];

  // Paramètres
  int nbMotifs = 30;
  boolean anim = false;
  float xMotifs = 100;
  float largeurMotif;
  float t=0;

  SketchNolwen()
  {
    super("Nolwen");
  }

  void setup()
  {
    for (int i=0; i<nb; i=i+1)
    {
      positionx[i] = random(2*width/3, width);
      positiony[i] = random(0, height);
      vitessex[i] = random(-2, 2);
      vitessey[i] = random(-2, 2);
    }
    largeur = width/resx;
    hauteur = height/resy;
  }


  void draw()
  {
    stroke(0);
    noFill();
    float x, y;
    //    for (y=0; y<height; y=y+hauteur)
    {
      for (x=0; x<=width; x=x+width/3)
      {

        // ---------------------- 1er tiers
        if (x<width/3)
        {
          for (int i=0; i<nbMotifs; i=i+1)
          {

            noFill();
            if (anim)
              largeurMotif = 50*sin(radians(10*t + i*10));
            else
              largeurMotif = 50;

            ellipse(xMotifs, 0, largeurMotif, 5);
            losange(xMotifs, 0, largeurMotif);
            //line(0,0,100,0);

            // Rotation sur un tour 
            rotate( radians(360.0/nbMotifs) );
          }
        }

        // ---------------------- 2eme tiers
        else if (x<2*width/3)
        {
          for (y=0; y<height; y=y+hauteur)
          for (float x2=x; x2<=2*width/3; x2=x2+hauteur)
          {
            r = int(random(0, 2));

            if (r==0)
            {
              motif(x2, y, 10);
            } else if (r==1)
            {
              motif2(x2, y, 10);
            }
          }
        }


        // ---------------------- 3eme tiers
        else if (x<3*width/3)
        {
          for (int i=0; i<nb; i=i+1)
          {
            fill(0);
            positionx[i] = positionx[i] + vitessex[i];
            positiony[i] = positiony[i] + vitessey[i];
            if (positionx[i]<2*width/3 || positionx[i]>width) //rebond à droite ou à gauche
            {
              vitessex[i] = -vitessex[i];
            }
            if (positiony[i]<0 || positiony[i]>height) // rebond en haut ou en bas
            {
              vitessey[i] = -vitessey[i];
            }

            point(positionx[i], positiony[i], 1);
          }
        }
      }
    }
  }

  void losange(float x, float y, float taille)
  {
    //stroke(250);
    noFill();
    triangle(100, 200, 200, 66, 300, 200);
    triangle(100, 200, 200, 333, 300, 200);
  }

  void motif(float x, float y, float taille)
  {
    //stroke(250);
    line(x, y, x+largeur/2, y+hauteur/2);
    line(x+largeur/2, y+hauteur/2, x, y+hauteur);
  }

  void motif2(float x, float y, float taille)
  {
    //stroke(250);
    line(x, y, x+largeur, y+hauteur, x, y);
    line(x, y, x+largeur, y);
  }
}
