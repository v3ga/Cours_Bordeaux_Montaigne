/*
Exemple  de sketch qui permet de sauvegarder un fichier au format SVG
Vous pouvez l'utiliser comme trame pour produire le motif qui sera imprimé lundi 15 avril.
—
Un appui sur une touche du clavier permet un export horodaté dans le dossier de sketch (CTRL + K pour y accéder)
*/


// ----------------------------------------------
import processing.svg.*;
import java.util.*;

// ----------------------------------------------
boolean bExport = false;
// Vous pouvez placer vos variables ici

// ----------------------------------------------

int nb = 5; // nombre de billes total
float[] x = new float[nb];
float[] y = new float[nb];
float[] vx = new float[nb];
float[] vy = new float[nb];
float angle = 0.0;

void setup()
{
  size(630, 900); // proportionnel au format A4 (21x30 cm)
  for (int i=0; i<nb; i=i+1)
  {
    x[i] = random(0, width);
    y[i] = random(0, height);
  }
}

// ----------------------------------------------
void draw()
{
  //background(255);

  // Pas de remplissage et ligne / contours noirs.
  noFill();
  stroke(0);
  if (bExport)
  {
    beginRecord(SVG, timestamp()+"_export.svg");
  }
  
  for (int i=0; i<nb; i=i+1)
  {
    angle = 360.0 * noise(x[i]*0.0010, y[i]*0.01, frameCount * 0.01);
    vx[i] = cos( radians(angle) );
    vy[i] = sin( radians(angle) );
    x[i] = x[i] + vx[i];
    y[i] = y[i] + vy[i];

    if ( x[i] < 0 ) x[i] = width; 
    else if ( x[i] > width) x[i] = 0;
    if ( y[i] < 0 ) y[i] = height;
    else if (y[i] > height) y[i] = 0;
  
  // ================================================
  // ================================================
  // Vous pouvez placer vos commandes de dessin ici

  ellipse(width/2, height/2, 300, 300);
  ellipse( x[i], y[i], 1, 1 );


  // ================================================
  // ================================================

  if (bExport)
  {
    endRecord();
    bExport = false;
  }
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
