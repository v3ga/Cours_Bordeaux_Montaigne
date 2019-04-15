import controlP5.*;
import processing.svg.*;
boolean bExport = false ;

int nbMotifs = 50 ;
int nbMotifs2 = 50 ;
float anglerotation= 30;

ControlP5 cp5 ; // type de donnée puis nom de la variable

void setup()
{
  size(630,900);  // proportionnel au format A4 de 21x30 cm   

}

void draw()
{
  background(255);
  noFill();
  stroke(0);
  
  // ----------------------------- pour l'exportation
  if(bExport)
  {
    beginRecord(SVG,"export.svg");
  }
  
  // ----------------------------- forme de Maurine
  translate(width/2,height/2);
  for (int i=0; i<nbMotifs; i=i+1)
  {
    rotate(radians(360.0 / nbMotifs) ); // pivotement des axes du repère
    // rect(0,0,300 * noise(i * 0.1 + frameCount*0.01), 2);
    ellipse(mouseX, 0, 300 * noise(i * 0.1 + frameCount*0.01), 100);
  }
  
  // ----------------------------- forme de Mathilde
  stroke(0);
  for (int i=0; i<nbMotifs2 ; i++)
   {
   rotate(radians(anglerotation)) ; // le seul paramètre c'est l'angle de rotation (en radian), on fait pivoter les axes
   stroke(0);
   ellipse(50,0,i*2,100); // on peut donc mettre des coordonnées négatives
 
   rotate(radians(mouseX)) ;
   stroke(0,150);
   ellipse(100,0,i,50);
   stroke(0,100);
   ellipse(150,0,i*0.5,30);
 }
  
  if (bExport)
  {
    bExport = false;
    endRecord();
  } 
}

void keyPressed()
{
  bExport = true;
}
