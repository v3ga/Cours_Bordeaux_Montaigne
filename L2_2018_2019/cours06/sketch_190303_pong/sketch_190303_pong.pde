// Position de la balle
float xb = 250;
float yb = 250;
// Vitesse de la balle
float vxb = 1;
float vyb = 2;
// Taille de la balle
float db = 20;
// Raquettes
float hraquette = 100; // hauteur pour les deux raquettes
float lraquette = 10; // largeur de la raquette

float xraquette1 = 5; // position en x de la raquette à gauche
float yraquette1 = 250; // position en y de la raquette à gauche

float xraquette2 = 500-5;  // position en x de la raquette à droite
float yraquette2 = 250;  // position en y de la raquette à droite

// ----------------------------------------------------
void setup()
{
  size(500, 500);
  rectMode(CENTER);
}

// ----------------------------------------------------
void draw()
{
  background(0);

  // Mise à jour de la position de la balle
  xb = xb + vxb; // on rajoute la vitesse en x (vxb) à la position (xb)
  yb = yb + vyb; // on rajoute la vitesse en y (vyb) à la position (yb)

  // On positionn les raquettes : pour l'instant les deux raquettes bougent en fonction de la souris :-)
  yraquette1 = mouseY;
  yraquette2 = height-mouseY;

  // Si la balle sort à droite de l'écran
  if ( xb >= width-lraquette/2 - db/2)
  {
    // Touche-t-elle la raquette2 ? 
    // Oui -> on inverse la vitesse de la balle
    // Non -> balle au centre ! 
    if ( yb >= yraquette2 - hraquette/2 && yb <= yraquette2 + hraquette/2)
    {
      vxb = - vxb;
    }
    else
    {
      xb = 250;
      yb = 250;
    }
  }
  
  // Si la balle sort à gauche de l'écran
  if ( xb <= lraquette/2+db/2)
  {
    if ( yb >= yraquette1 - 50 && yb <= yraquette1 + 50)
    {
      vxb = - vxb;
    }
    else
    {
      xb = 250;
      yb = 250;
    }
  }
  // Si la balle touche le bord en bas de l'écran
  // -> on inverse sa vitesse en y 
  if ( yb <= 0)
  {
    vyb = - vyb;
  }
  // Si la balle touche le bord en haut de l'écran
  // -> on inverse sa vitesse en y 
  if ( yb >= height)
  {
    vyb = - vyb;
  }

  // Dessin de la balle et des raquettes !
  noStroke();
  fill(255);
  ellipse(xb, yb, db, db);
  rect(xraquette1,yraquette1,lraquette,hraquette);
  rect(xraquette2,yraquette2,lraquette,hraquette);
}
