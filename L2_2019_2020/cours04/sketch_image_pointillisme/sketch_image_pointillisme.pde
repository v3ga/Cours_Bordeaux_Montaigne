PImage img;
int xpixel;
int ypixel;

void settings()
{
  img = loadImage("tricodeur-large.jpg"); 
  size(400, 400);
}

void setup()
{
  surface.setTitle("Cours 04 / Mémoriser / Pointillisme");
}

void draw() 
{
  xpixel = int( random(width) ); 
  ypixel = int( random(height) ); 
  noStroke();
  fill(img.get(xpixel,ypixel));
  ellipse(xpixel,ypixel,20,20);
}
