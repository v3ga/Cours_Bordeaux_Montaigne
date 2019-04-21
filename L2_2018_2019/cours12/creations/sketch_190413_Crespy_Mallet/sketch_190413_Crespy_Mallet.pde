// ----------------------------------------------
import processing.svg.*;
import java.util.*;

// ----------------------------------------------
boolean bExport = false;
// Vous pouvez placer vos variables ici
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
// ----------------------------------------------
void setup()
{
  size(630, 900); // proportionnel au format A4 (21x30 cm)
  taille = float(width) / float(res);
  println(taille);
}

// ----------------------------------------------
void draw()
{
  background(255);

  // Pas de remplissage et ligne / contours noirs.
  if (bExport)
  {
    beginRecord(SVG, timestamp()+"_export.svg");
  }
  noFill();
  stroke(0);
  
  // ================================================
  // ================================================
  // Vous pouvez placer vos commandes de dessin ici

 translate(width/2, height/2);
  for (int i=0; i<res; i++)
  {
    x = i*taille;
    nbPoints = int(random(nbPointsMin, nbPointsMax));


    for (int n=0; n<nbPoints; n++)
    {
      bezier(0, 50, 200*noise(i*0.5 + frameCount*0.008), 200, 20, 30, 100, 100);
      rotate( radians(360.0/ 20) );
      ellipse(0, 50, 200*noise(i*0.5 + frameCount*0.008), 200);
      rotate( radians(360.0/ 20) );
    }
  }



  // ================================================
  // ================================================

  if (bExport)
  {
    endRecord();
    bExport = false;
  }
}

// ----------------------------------------------
void keyPressed()
{
  bExport = true;
}


// ----------------------------------------------
// fonction qui donne un horodatage
String timestamp() 
{
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
