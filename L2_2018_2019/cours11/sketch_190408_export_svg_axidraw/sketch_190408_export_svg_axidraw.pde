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
void setup()
{
  size(630, 900); // proportionnel au format A4 (21x30 cm)
}

// ----------------------------------------------
void draw()
{
  background(255);

  // Pas de remplissage et ligne / contours noirs.
  noFill();
  stroke(0);
  if (bExport)
  {
    beginRecord(SVG, timestamp()+"_export.svg");
  }
  
  // ================================================
  // ================================================
  // Vous pouvez placer vos commandes de dessin ici

  ellipse(width/2, height/2, 300, 300);


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
