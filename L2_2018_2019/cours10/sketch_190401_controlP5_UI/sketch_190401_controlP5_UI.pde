import controlP5.*;

ControlP5 cp5; // ControlP5 type de données / cp5 nom de la variable 
float largeur = 400;
float hauteur = 400;
float x = 250;
float y = 300;
boolean dessine = true; // « vrai » ou « 1 » 

void setup()
{
  size(500,600);
  cp5 = new ControlP5(this); // "this" veut dire « programme en cours »
  cp5.addSlider("largeur", 0, 500).setWidth(300).linebreak(); // nom de la variable, min, max
  cp5.addSlider("hauteur", 0, 500).setWidth(300).linebreak(); // nom de la variable, min, max
  cp5.addSlider("x", 100, 400).setWidth(300).linebreak(); // nom de la variable, min, max
  cp5.addSlider("y", 0, height).setWidth(300).linebreak(); // nom de la variable, min, max
  cp5.addToggle("dessine").linebreak();
  cp5.addButton("exporter");
}

void draw()
{
  background(0); // fond noir
  if (dessine == true)
  {
    ellipse(x,y,largeur,hauteur);
  }
}

void exporter()
{
  println("click !");
  saveFrame("ellipse.png");
}
