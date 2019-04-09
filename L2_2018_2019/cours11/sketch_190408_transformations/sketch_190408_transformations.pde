// ----------------------------------------------
import controlP5.*;

// ----------------------------------------------
int nbMotifs = 100;
float vitesse_noise = 0.01;
float size_noise = 0.01;
float alpha_shapes = 200.0;
float size_shapes = 350;
float h_shapes = 20;
float offset_shapes = 0;
boolean fill_shapes = false;
boolean rect_shapes = false;

ControlP5 cp5;

// ----------------------------------------------
void setup()
{
  size(630, 900);
  cp5 = new ControlP5(this);
  cp5.begin(5,5);
  cp5.addSlider("nbMotifs", 3, 200).linebreak();
  cp5.addSlider("vitesse_noise", 0.01/2, 0.01*2).linebreak();
  cp5.addSlider("size_noise", 0.1, 0.5).linebreak();
  cp5.addSlider("alpha_shapes", 0.0, 255).linebreak();
  cp5.addSlider("size_shapes", 0.0, width).linebreak();
  cp5.addSlider("h_shapes", 1.0, 50).linebreak();
  cp5.addSlider("offset_shapes", 0.0, 0.85*width).linebreak();
  cp5.addToggle("fill_shapes").linebreak();
  cp5.addToggle("rect_shapes").linebreak();
  
}

// ----------------------------------------------
void draw()
{
  // Fond noir
  background(0);
  pushMatrix();  
  // Déplacement de l'origine du repère au centre de l'écran
  translate(width/2, height/2);
  // Boucle de dessin du motif
  if (fill_shapes)
  { 
    noStroke();
    fill(255,alpha_shapes);
  }
  else
  {
    stroke(255,alpha_shapes);
    noFill();
  }
  for (int i=0; i<nbMotifs; i=i+1)
  {
    float wMotif = size_shapes * noise(i*size_noise + frameCount*vitesse_noise);
    if (rect_shapes)
    {
      rect(offset_shapes,0,wMotif, h_shapes);
    }
    else
    {
      ellipseMode(CORNER);
      ellipse(offset_shapes, 0, wMotif, h_shapes);
    }
    rotate( radians(360.0/nbMotifs) );
  }
  popMatrix();
}
