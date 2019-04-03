// taille d'une cellule de la grille
float pas = 25;
// Variable qui va stocker le nombre aléatoire pour le choix du dessin du motif dans la boucle
float rnd = 0;



void setup()
{
  size(500,750);
  // On n'appelle draw() qu'une seule fois
  noLoop();
}

void draw()
{
  background(255);
  
  noStroke();
  for (float y=pas; y<750-pas ; y = y + pas)
  {
    // Dessin d'une ligne de motifs
    for (float x=pas; x<500-pas ; x = x + pas)
    {
      // Choix du nombre au hasard
      rnd = int(random(6));

      // Dessin d'un rectangle noir (fond de la cellule)
      fill(0);
      noStroke();
      rect(x,y,pas,pas); 
      fill(255);
      
      // Si le nombre vaut 0
      if (rnd == 0)
      {
          arc(x,y,2*pas,2*pas,0,HALF_PI);
      }
      else if (rnd == 1)
      {
          arc(x,y+pas,2*pas,2*pas,-HALF_PI,0);
      }
      else if (rnd == 2)
      {
          arc(x+pas,y+pas,2*pas,2*pas,PI,PI+HALF_PI);
      }
      else if (rnd == 3)
      {
          arc(x+pas,y,2*pas,2*pas,HALF_PI, PI);
      }
      else if (rnd >= 4)
      {
        // Rien :-)
      }
    }
  }

  // Dessin du cadre autour
  noFill();
  stroke(0);
  rect(pas,pas,500-2*pas,750-2*pas);


}


void mousePressed()
{
  redraw();
}