PImage img;

void settings()
{
  img = loadImage("tricodeur-large.jpg"); 
  size(400, 400);
}

void setup()
{
  surface.setTitle("Cours 04 / Mémoriser / Image");
}

void draw() 
{
  imageMode(CENTER);
  image(img, width/2, height/2, mouseX, mouseY);
}
