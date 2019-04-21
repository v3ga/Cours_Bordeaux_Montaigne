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

  for (int x = 60; x < width; x += 60) {
    for (int y = 60; y < height; y += 60) {
      float n = noise(x * 0.01, y * 0.01, frameCount * 0.005);
      pushMatrix();
      strokeWeight(0.5);
      strokeJoin(BEVEL);
      translate(x,y);
      rotate(TWO_PI * n);
      scale(10 * n);
      box(5);
      popMatrix();
      //rotateX(radians(mouseY)-500/1000);
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
