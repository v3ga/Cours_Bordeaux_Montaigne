// ----------------------------------------------
import controlP5.*;

// ----------------------------------------------
int nbMotifs = 80;
float vitesse_noise = 0.02;
float size_noise = 0.50;
float alpha_shapes = 115.93;
float size_shapes = 200.84;
float h_shapes = 48.02;
float offset_shapes = 37.86;
boolean fill_shapes = false;
boolean rect_shapes = false;

ControlP5 cp5;

// ----------------------------------------------
void setup()
{
  size(420, 600);
}

// ----------------------------------------------
void draw()
{
  // Fond noir
  background(255);
  pushMatrix();  
  // Déplacement de l'origine du repère au centre de l'écran
  translate(width/2, height/2);
  // Boucle de dessin du motif
  if (fill_shapes)
  { 
    noStroke();
    fill(255, alpha_shapes);
  } else
  {
    stroke(0, alpha_shapes);
    noFill();
  }
  for (int i=0; i<nbMotifs; i=i+1)
  {
    float wMotif = size_shapes * noise(i*size_noise + frameCount*vitesse_noise);

    rect(offset_shapes, 0, wMotif, h_shapes);
    rotate( radians(360.0/nbMotifs) );
  }
  popMatrix();
}