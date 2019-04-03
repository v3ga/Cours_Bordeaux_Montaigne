PImage img;

void setup()
{
  size(500,333);
  img = loadImage("tricodeur.jpg");
}

void draw()
{
  image(img,0,0);
}