class SketchColineB extends Sketch
{
  float resx = 20;
  float resy = 20;
  float largeur;
  float hauteur;
  float distance;
  float vitesse = 90;
  float duree = 3; /* en secondes, duree du .gif*/

  SketchColineB()
  {
    super("ColineB");
  }

  void settings()
  {
    size(600, 400);
    largeur = width / resx;
    hauteur = height / resy;
    //boucle = createLoop( {duration : duree, gif: true } )
    vitesse = 360 / duree;
  }

  void drawBackground()
  {
    background(255);
    stroke(0);
    noFill();
  }

  void draw()
  {
    for (float y = 0; y < height; y = y + hauteur) {
      for (float x = 0; x < width; x = x + largeur) {
        distance = 3 * dist(x, y, width / 2, height / 2);

        push();
        translate(x + largeur, y + hauteur);
        rotate(radians(vitesse * t + distance));
        beginShape();
        vertex(x, y);
        vertex(x + largeur * 6, y + largeur * 2);
        vertex(x, y - largeur);
        endShape(CLOSE);
        pop();
      }
    }
  }

  String getFilename()
  {
    return this.id+".svg";
  }
}


class SketchColineG extends Sketch
{
  int nb = 100;
  float[] positionx = new float[nb];
  float[] positiony = new float[nb];
  float[] vitessex = new float[nb];
  float[] vitessey = new float[nb];

  SketchColineG()
  {
    super("ColineG");
  }

  void settings()
  {
    size(600, 400);
    for (int i = 0; i < nb; i = i + 1) {
      positionx[i] = random(0, width);  
      positiony[i] = random(0, height);
      vitessex[i] = random(-2, 2);
      vitessey[i] = random(-2, 2);
    }
  }


  void draw()
  {
    pushStyle();
    for (int i = 0; i < nb; i = i + 1) 
    {
      // Accélération
      //vitessey[i] = vitessey[i] + 0.1;

      positionx[i] = positionx[i] + vitessex[i];
      positiony[i] = positiony[i] + vitessey[i];

      if (positionx[i] < 0 || positionx[i] > width) // rebond à droite OU à gauche du canvas
        vitessex[i] = -vitessex[i];
      if (positiony[i] < 0 || positiony[i] > height) // rebond en haut OU en bas du canvas
        vitessey[i] = -vitessey[i];

      star2(positionx[i], positiony[i], 100);
    }
    popStyle();

    // Dessin des connexions
    int i, j;
    for (i = 0; i < nb; i = i + 1) 
    {
      for (j = i; j < nb; j = j + 1) 
      {
        if ( dist(positionx[i], positiony[i], positionx[j], positiony[j]) <= 50 )
        {
          line( positionx[i], positiony[i], positionx[j], positiony[j] );
        }
      }
    }
  }

  void star2(float x, float y, float taille)
  {
    arc(x, y, taille/4, taille/4, 0, HALF_PI);
    arc(x+taille/4, y, taille/4, taille/4, HALF_PI, PI);
    arc(x, y+taille/4, taille/4, taille/4, PI+HALF_PI, TWO_PI);
    arc(x+taille/4, y+taille/4, taille/4, taille/4, PI, PI+HALF_PI);
  }

  String getFilename()
  {
    return this.id+".svg";
  }
}
