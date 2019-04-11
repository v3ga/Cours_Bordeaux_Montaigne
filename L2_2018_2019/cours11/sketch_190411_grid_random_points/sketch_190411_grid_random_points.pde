// ------------------------------------------
// Combien de motifs horizontalement / verticalement
int res = 5;
// Stocke la largeur d'une cellule de la grille
float taille = 0;
// Position de la cellule (i,j) sur la fenêtre
float x=0;
float y=0;
// Variable qui va stocker pour chaque cellule (i,j) le nombre de points tiré au hasard 
int nbPoints = 0;
int nbPointsMin = 3;
int nbPointsMax = 30;

// ------------------------------------------
void setup()
{
  size(420, 600);
  taille = float(width) / float(res);
  println(taille);
}

// ------------------------------------------
void draw()
{
  background(255);
  noFill();
  stroke(0);

  translate( 0.5*(width-res*taille), 0.5*(height-res*taille) );
  for (int j=0; j<res; j++)
  {
    for (int i=0; i<res; i++)
    {
      x = i*taille;
      y = j*taille;
      nbPoints = int(random(nbPointsMin, nbPointsMax));

      beginShape();
      for (int n=0; n<nbPoints; n++)
      {
        float angle = random(TWO_PI);
        vertex
        ( 
          x + 0.5*taille + 0.45*taille*cos( angle ),
          y + 0.5*taille + 0.45*taille*sin( angle )
        );
      }
      endShape();
    }
  }

  noLoop();
}
