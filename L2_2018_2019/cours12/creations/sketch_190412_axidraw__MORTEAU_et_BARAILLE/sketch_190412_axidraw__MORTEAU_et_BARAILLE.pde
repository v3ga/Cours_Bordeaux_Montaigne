import processing.svg.*;
import java.util.*;


boolean bExport = false;

int nbMotifs = 35;
float a =350; //forme
float b = 20; //taille
float c = 0.05; //vitesse
float d = 20;
float e = 60; // centre
float f =150;
// ----------------------------------------------
void setup()
{
  size(630, 900); // proportionnel au format A4 (21x30 cm)
 
}


void draw()
{
  background(255);
 
  if (bExport)
  {
    beginRecord(SVG, timestamp()+"_export.svg");
  }
 
  translate(width/2, height/2);

  noFill();
  stroke(0);


  for (int i=0; i<nbMotifs; i=i+1)
  {
   
    rotate( radians(360.0/nbMotifs) );
    ellipse(10, 100*noise(i*0,1+frameCount*0,01),10,150);
    ellipse (10,150,20,50);
    rect( 50,0, 250*noise(i*0,1+frameCount*0,01),5);
    rotate( radians(360.0/nbMotifs) );
  }
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


String timestamp() 
{
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
