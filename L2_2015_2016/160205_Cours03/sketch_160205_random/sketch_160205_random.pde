// Mode continu
// gestionnaire de démarrage
void setup()
{
  size(500,500);
  background(255,255,255);
}

// gestionnaire (ou boucle) de dessin
void draw()
{
  noFill();
  stroke(100,100,100,100); // R,V,B,transparence
  // line(250,250,random(0,500),random(0,500));
  rect(250,250,random(-250,250),random(-250,250));
}