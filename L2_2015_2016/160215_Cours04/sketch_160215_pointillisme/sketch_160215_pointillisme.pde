PImage img;
int x = 0; 
int y = 0;

void setup()
{
  img = loadImage("tricodeur.jpg");
  size(458,358);
}

void draw()
{
  for (int i=0;i<50;i++)
  {
    x = (int) random(0,458);
    y = (int) random(0,358);
    noStroke();
    fill( img.get(x,y) );
    ellipse(x,y,15,15);
  }
}

void mousePressed()
{
  saveFrame("pointillisme.png");
}