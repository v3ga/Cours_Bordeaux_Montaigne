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
  size(630, 900, P3D); // proportionnel au format A4 (21x30 cm)
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
    beginRaw(SVG, timestamp()+"_export.svg");
  }
  
  // ================================================
  // ================================================
  // Vous pouvez placer vos commandes de dessin ici

  for (int x = 45; x < width; x += 45) {
    for (int y = 45; y < height; y += 45) {
      float n = noise(x * 0.01, y * 0.01, frameCount * 0.005);
      pushMatrix();
      strokeWeight(0.5);
      strokeJoin(BEVEL);
      translate(x,y);
      rotate(TWO_PI * n);
      scale(10 * n);
      box(5);
      popMatrix();
      //rotateX(radians(mouseY)/1000);
      //rotateY(radians(mouseX)/1000);
      rotateZ(y*0.005 * n /750);
      rotateX(x*0.005 * n /750);
      rotateY(0.005 * n /750);
    }
  }

  // ================================================
  // ================================================

  if (bExport)
  {
    endRaw();
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
