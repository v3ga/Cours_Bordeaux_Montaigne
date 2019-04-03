PImage img;

void setup()
{
  size(500,333);
  img = loadImage("tricodeur.jpg");
}

void draw()
{
  imageMode(CENTER);
  image(img,500/2,333/2,mouseX,mouseY);
}