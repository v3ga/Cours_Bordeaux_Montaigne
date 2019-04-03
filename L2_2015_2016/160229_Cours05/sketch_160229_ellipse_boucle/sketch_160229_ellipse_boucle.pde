float r = 0;
float taille = 25;

void setup()
{
  size(500, 500);
}

void draw()
{
  background(255);
  // Boucle for 
  noFill();
  stroke(0, 200);
  strokeWeight(2);
  for (float y=0; y<=500; y = y+taille)
  {
    for (float x=0; x<=500; x = x+taille)
    {
      ellipse(x, y, mouseX, mouseX);
    }
  }
}