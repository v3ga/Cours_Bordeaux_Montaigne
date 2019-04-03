float d = 100; // taille en pixels d'une cellule
int motif = 0; // variable qui va stocker le motif tiré au hasard lors des boucles for


void setup()
{
  size(500,500); // taille de la fenêtre en pixels
  frameRate(1); // un appel à draw() par seconde
}

void draw()
{
  background(255);
  
  for (float y = d/2 ; y <= height; x=x+d)
  {
    // Dessin d'une rangée de motif 
    for (float x = d/2 ; x <= width; x=x+d)
    {
      motif = int( random(0,4) ); // valeurs 0 / 1 / 2 / 3 possible ( la limite 4 n'est pas incluse dans la sélection random )
      
      if (motif == 0)
      {
      }
      if (motif == 1)
      {
      }
      if (motif == 2)
      {
      }
      if (motif == 3)
      {
      }

      // Affichage de la valeur de motif pour la cellule (x,y)
      // fill(0);
      // text(motif,x,y);

    
    }
  }
}
