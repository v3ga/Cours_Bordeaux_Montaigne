int nb = 8;
PGraphics[] frames;

void setup()
{
  size(800,800);
  frames = new PGraphics[nb];
  for (int i=0; i<nb; i++)
  {
    frames[i] = createGraphics(width,height);

    frames[i].beginDraw();
    frames[i].background(255,0);
    frames[i].endDraw();
    
  }
}

void draw()
{
  int i = frameCount % nb;  

  frames[i].beginDraw();
  if (mousePressed)
    frames[i].ellipse(mouseX,mouseY,50,50);
  frames[i].endDraw();

  background(127);
  image(frames[i],0,0);
}