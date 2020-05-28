class SketchAurelie extends Sketch
{
  int maxCount = 700; 
  int currentCount = 1;
  float[] x = new float[maxCount];
  float[] y = new float[maxCount];
  float[] r = new float[maxCount];


  // variables pour les points \\
  int maxCount2 = 700;
  int currentCount2 = 1;
  float[] x2 = new float[maxCount2];
  float[] y2 = new float[maxCount2];
  float[] r2 = new float[maxCount2];

  boolean stop = false;

  SketchAurelie()
  {
    super("Aurelie");
  }

  void settings()
  {
    super.settings();
    x[0] = width/2;
    y[0] = height/2;
    r[0] = 350; // point de départ des "branches" hors-cadre

    // intérieur - points \\
    x2[0] = width/2;
    y2[0] = height/2;
    r2[0] = 0; // point de départ des "branches" au centre du cadre
  }

  void setup()
  {
  }

  void draw()
  {
    if (stop == false)
    {
      // Paramètres pour les cercles \\
      float etoile = random(1, 3); // taille des cercles
      float etoileX = random(0+etoile, width-etoile); //accumulation des cercles en X
      float etoileY = random(0+etoile, height-etoile); //accumulation des cercles en Y

      // Paramètres pour la disposition des cercles \\
      float closestDist = 300;
      int closestIndex = 0;

      // Détermination du cercle le plus proche \\
      for (int i=0; i < currentCount; i++)
      {
        float newDist = dist(etoileX, etoileY, x[i], y[i]);
        if (newDist < closestDist) {
          closestDist = newDist;
          closestIndex = i;
        }
      }


      // Positionnement du nouveau cercle sur le contour du cercle le plus proche \\
      float angle = atan2(etoileY-y[closestIndex], etoileX-x[closestIndex]);

      x[currentCount] = x[closestIndex] + cos(angle) * (r[closestIndex]+etoile);
      y[currentCount] = y[closestIndex] + sin(angle) * (r[closestIndex]+etoile);
      r[currentCount] = etoile;
      currentCount++;
    }

    // dessin - cercle \\
    for (int i=0; i < currentCount; i++)
    {
      if (isInsideFrame(x[i], y[i], r[i]))
        ellipse(x[i], y[i], r[i]*2, r[i]*2);
    }


    if (currentCount >= maxCount2  && !stop)
    {
      //      noLoop();
      stop = true;
      println("stop");
    }

    //----------------------------------------------------------------------\\
    if (stop == false)
    {

      // Paramètres pour les points \\
      float etoile2 = random(1, 4); // "distance" entre les points 
      float etoileX2 = random(0+etoile2, width-etoile2); //accumulation des points en X
      float etoileY2 = random(0+etoile2, height-etoile2); //accumulation des points en Y

      // Paramètres pour la disposition des points \\
      float closestDist2 = 300;
      int closestIndex2 = 0;

      // Détermination du "cercle" le plus proche \\
      for (int i2=0; i2 < currentCount2; i2++)
      {
        float newDist2 = dist(etoileX2, etoileY2, x2[i2], y2[i2]);
        if (newDist2 < closestDist2) {
          closestDist2 = newDist2;
          closestIndex2 = i2;
        }
      }

      // Positionnement du nouveau point selon le "contour" du point le plus proche \\
      float angle2 = atan2(etoileY2-y2[closestIndex2], etoileX2-x2[closestIndex2]);

      x2[currentCount2] = x2[closestIndex2] + cos(angle2) * (r2[closestIndex2]+etoile2);
      y2[currentCount2] = y2[closestIndex2] + sin(angle2) * (r2[closestIndex2]+etoile2);
      r2[currentCount2] = etoile2;
      currentCount2++;
    }
    // dessin - points \\
    for (int i2=0; i2 < currentCount2; i2++)
    {
      //      triangle(x2[i2], y2[i2], x2[i2], y2[i2], x2[i2], y2[i2]);
      //      ellipse(x2[i2], y2[i2], r2[i2]*2, r2[i2]*2);
      if (isInsideFrame(x2[i2], y2[i2], 0))
       ellipse(x2[i2], y2[i2],2,2);
    }

    if (currentCount2 >= maxCount2 && !stop)
    {
      //      recordEnd(); // fige le dessin une fois le maxCount atteint
      //      noLoop();
      println("stop");
      stop = true;
    }

    //----------------------------------------------------------------------\\


    // animation voie lactée au centre du canvas \\ 
    t = millis() / 1125.0; 
    push(); 

    translate(width/2, height/2);
    strokeWeight(1.0);

    for (float taille=240; taille>=20; taille=taille-6*2)
    {
      fill(taille);
      rotate(radians(5*t));
      voielactee(0, 0, taille);
    }

    pop();
  }


  void voielactee(float x, float y, float taille)
  {
    ellipseMode(CENTER);
    ellipse(x, y, taille/8, taille/5);
    ellipse(x, y, taille/5, taille/8);
  }

  boolean isInsideFrame(float x, float y, float r)
  {
    boolean is = false;
    if ((x-r) >= 0 && (x+r)<=width && (y-r)>=0 && (y+r)<=height)
      is = true;
    return is;
  }
}
