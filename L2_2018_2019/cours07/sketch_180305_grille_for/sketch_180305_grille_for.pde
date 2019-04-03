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
  
  stroke(0);
  strokeWeight(2);
  for (float y=pas; y<height-pas ; y = y + pas)
  {
    // Dessin d'une ligne de motifs
    for (float x=pas; x<width-pas ; x = x + pas)
    {
      // Choix du nombre au hasard
      rnd = int(random(4));
      
      // Si le nombre vaut 0
      if (rnd == 0)
      {
        line(x,y,x+pas,y+pas);
      }
      else if (rnd == 1)
      {
        line(x+pas,y,x,y+pas);
      }
      else if (rnd == 2)
      {
        line(x+pas/2,y,x+pas/2,y+pas);
      }
      else if (rnd == 3)
      {
        line(x,y+pas/2,x+pas,y+pas/2);
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