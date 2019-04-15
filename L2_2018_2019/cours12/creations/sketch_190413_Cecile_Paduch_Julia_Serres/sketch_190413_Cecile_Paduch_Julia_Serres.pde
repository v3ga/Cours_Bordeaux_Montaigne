import processing.svg.*;
import java.util.*;

////////////////////////////////////////////////////////////////
boolean bExport = false;
float d = 40; // taille en pixels d'une cellule
int motif = 0; // variable qui va stocker le motif tiré au hasard lors des boucles for


////////////////////////////////////////////////////////////////
void setup()
{
  size(630, 900); // proportionnel au format A4 (21x30 cm)
  frameRate(0.8); // 0.8 appel à draw() par seconde
}

////////////////////////////////////////////////////////////////
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

  {

    for (float y = d/2; y <= height; y=y+d)
    {
      // Dessin d'une rangée de motif 
      for (float x = d/2; x <= width; x=x+d)
      {
        motif = int( random(0, 3) ); 

        if (motif == 0)
        {
          stroke(0); 
          noFill();
          beginShape();
          vertex(x-d/6, y-d/3); // A
          vertex(x+d/6, y-d/3); // B
          vertex(x+d/3, y-d/6); // C
          vertex(x+d/3, y+d/6); // D
          vertex(x+d/6, y+d/3); // E
          vertex(x-d/6, y+d/3); // F
          vertex(x-d/3, y+d/6); // G
          vertex(x-d/3, y-d/6); // H
          vertex(x-d/6, y-d/3); // A
          endShape();


          beginShape();
          vertex(x-d/3, y-d/2); 
          vertex(x-d/6, y-d/3); // A
          vertex(x+d/6, y-d/3); // B
          vertex(x+d/3, y-d/2); 
          endShape();

          beginShape();
          vertex(x+d/3, y+d/2); 
          vertex(x+d/6, y+d/3); // E
          vertex(x-d/6, y+d/3); // F
          vertex(x-d/3, y+d/2); 
          endShape();
        }

        ////////////////////////////////////////////////////////////////

        if (motif == 0)
        {
          stroke(0); 
          noFill();
          beginShape();
          vertex(x-d/3, y-d/2); 
          vertex(x-d/6, y-d/3); // A
          vertex(x+d/6, y-d/3); // B
          vertex(x+d/3, y-d/2); 
          endShape();

          beginShape();
          vertex(x+d/3, y+d/2); 
          vertex(x+d/6, y+d/3); // E
          vertex(x-d/6, y+d/3); // F
          vertex(x-d/3, y+d/2); 
          endShape();


          beginShape();
          vertex(x-d/2, y+d/3); 
          vertex(x-d/3, y+d/6); // G
          vertex(x-d/3, y-d/6); // H
          vertex(x-d/2, y-d/3); 
          endShape();

          beginShape();
          vertex(x+d/2, y-d/3); 
          vertex(x+d/3, y-d/6); // C
          vertex(x+d/3, y+d/6); // D
          vertex(x+d/2, y+d/3); 
          endShape();
        }

        ////////////////////////////////////////////////////////////////

        if (motif == 2)
        {
          stroke(0); 
          noFill();
          beginShape();
          vertex(x-d/6, y-d/3); // A
          vertex(x+d/6, y-d/3); // B
          vertex(x+d/3, y-d/6); // C
          vertex(x+d/3, y+d/6); // D
          vertex(x+d/6, y+d/3); // E
          vertex(x-d/6, y+d/3); // F
          vertex(x-d/3, y+d/6); // G
          vertex(x-d/3, y-d/6); // H
          vertex(x-d/6, y-d/3); // A
          endShape();
        }
        ////////////////////////////////////////////////////////////////

        if (motif == 2)
        {
          stroke(0); 
          noFill();
          beginShape();
          vertex(x-d/3, y-d/2); 
          vertex(x-d/6, y-d/3); // A
          vertex(x+d/6, y-d/3); // B
          vertex(x+d/3, y-d/2); 
          endShape();

          beginShape();
          vertex(x+d/3, y+d/2); 
          vertex(x+d/6, y+d/3); // E
          vertex(x-d/6, y+d/3); // F
          vertex(x-d/3, y+d/2); 
          endShape();


          beginShape();
          vertex(x-d/2, y+d/3); 
          vertex(x-d/3, y+d/6); // G
          vertex(x-d/3, y-d/6); // H
          vertex(x-d/2, y-d/3); 
          endShape();

          beginShape();
          vertex(x+d/2, y-d/3); 
          vertex(x+d/3, y-d/6); // C
          vertex(x+d/3, y+d/6); // D
          vertex(x+d/2, y+d/3); 
          endShape();
        }
      }
    }
  }


  ////////////////////////////////////////////////////////////////

  if (bExport)
  {
    endRecord();
    bExport = false;
  }
}

////////////////////////////////////////////////////////////////
void keyPressed()
{
  bExport = true;
}


////////////////////////////////////////////////////////////////
// fonction qui donne un horodatage
String timestamp() 
{
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
