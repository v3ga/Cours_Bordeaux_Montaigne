int nbMotifs = 400;
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
  translate(width/2,height/2);
  noFill();
  stroke(0);
  if (bExport)
  {
    beginRecord(SVG, timestamp()+"_export.svg");
  }
  
  // ================================================
  // ================================================
  // Vous pouvez placer vos commandes de dessin ici

  ellipse(0, 0, 400, 400);
  ellipse(0, 0, 300, 300);
  ellipse(0, 0, 350, 350);
  ellipse(0, 0, 500, 500);
  ellipse(0, 0, 600, 600);
  
  for (int i=0; i<nbMotifs; i=i+1)
  {
  rotate( radians( 360.0 / nbMotifs ) ); //inclinaison axes
  rect(0,0,600*noise(i*0.1+frameCount*0.01),2);
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
