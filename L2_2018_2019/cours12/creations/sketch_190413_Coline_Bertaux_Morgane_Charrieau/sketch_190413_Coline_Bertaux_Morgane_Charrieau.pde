// Pas le code export intégré

import processing.svg.*;
import java.util.*;

boolean bExport = false;
int nbMotifs = 50;
float amplitude = 360;
int nMotifs = 300;
float emplitude = 360.0;

void setup()
{
  size(420, 600);
  noFill();
}

void draw()
{
  background(255);

  if (bExport)
  {
    beginRecord(SVG, timestamp()+"_export.svg");
  }
    noFill();
    stroke (0);

  translate(width/2, height/2); // déplacement de l'origine
  for (int i=0; i<nbMotifs; i=i+1)
  {
    rotate(radians(amplitude / nbMotifs));
    rect (0, 0, 50+200*noise (i*0.1 + frameCount*0.005), 30);
    //ellipse(10,10,1500*noise (i*0.1 + frameCount*0.005),8);
  }
  for (int i=0; i< nMotifs; i=i+1)
  {
    rotate( radians(emplitude / nMotifs) ); 
    //ellipse(100, 0, 200, 50);
    //rect (10, 10, 300*noise (i*0.1 + frameCount*0.005), 0);
    line (200, 0, 50+200*noise (i*0.1 + frameCount*0.05), 0);
  }

  if (bExport)
  {
    endRecord();
    bExport = false;
  }
}

void keyPressed()
{
  bExport = true;
}

String timestamp() 
{
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
